{assert} = require '../helpers'
{APLArray} = require '../array'

multiplicitySymbol = (z) ->
  if z instanceof APLArray then (if z.isSingleton() then '1' else '*') else '.'

@pervasive = ({monad, dyad}) ->
  pervadeMonadic =
    if monad
      (x) ->
        if x instanceof APLArray
          x.map pervadeMonadic
        else
          (x[F.aplName]?()) ? monad x
    else
      -> throw Error 'Not implemented'
  pervadeDyadic =
    if dyad
      (x, y) ->
        tx = multiplicitySymbol x
        ty = multiplicitySymbol y
        switch tx + ty
          when '..' then (x?[F.aplName]?(y)) ? (y?['right_' + F.aplName]?(x)) ? (dyad x, y)
          when '.1' then y.map (yi) -> pervadeDyadic x, yi
          when '.*' then y.map (yi) -> pervadeDyadic x, yi
          when '1.' then x.map (xi) -> pervadeDyadic xi, y
          when '*.' then x.map (xi) -> pervadeDyadic xi, y
          when '1*' then xi = x.unbox(); y.map (yi) -> pervadeDyadic xi, yi
          when '*1' then yi = y.unbox(); x.map (xi) -> pervadeDyadic xi, yi
          when '11' then yi = y.unbox(); x.map (xi) -> pervadeDyadic xi, yi # todo: use the larger shape
          when '**'
            if x.shape.length isnt y.shape.length then throw Error 'RANK ERROR'
            for axis in [0...x.shape.length] when x.shape[axis] isnt y.shape[axis] then throw Error 'LENGTH ERROR'
            x.map2 y, pervadeDyadic
    else
      -> throw Error 'Not implemented'
  F = (omega, alpha) ->
    assert omega instanceof APLArray
    assert alpha instanceof APLArray or typeof alpha is 'undefined'
    (if alpha then pervadeDyadic else pervadeMonadic) omega, alpha

@numeric = (f) -> (x, y, axis) ->
  if typeof x isnt 'number' or (y? and typeof y isnt 'number')
    throw Error 'DOMAIN ERROR'
  f x, y, axis
