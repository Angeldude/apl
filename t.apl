⍬ ←→ 0⍴0
⍴⍬ ←→ ,0
'abcd'~'bde' ←→ 'ac'
(⍳6)~0 2 4 ←→ 1 3 5
'ab' 'cd' 'ad'~'a' ←→ 'ab' 'cd' 'ad'
'ab' 'cd' 'ad'~'cd' ←→ 'ab' 'cd' 'ad'
'ab' 'cd' 'ad'~⊂'cd' ←→ 'ab' 'ad'
'ab' 'cd' 'ad'~'a' 'cd' ←→ 'ab' 'ad'
(11+⍳6)~2 3⍴1 2 3 14 5 6 ←→ 11 12 13 15 16
(2 2⍴⍳4)~2 !! RANK ERROR
(-⍟)2 3 ←→ -⍟2 3
2(-*)3 ←→ -2*3
↑3 ←→ 3
↑(1 2)(3 4) ←→ 2 2⍴1 2 3 4
↑(1 2)(3 4 5) ←→ 2 3⍴1 2 0 3 4 5
↑1 2 ←→ 1 2
↑(1 2)3 ←→ 2 2⍴1 2 3 0
↑1(2 3) ←→ 2 2⍴1 0 2 3
↑2 2⍴1(1 1 2⍴3 4)(5 6)(2 0⍴0) ←→ 2 2 1 2 2⍴1 0 0 0 3 4 0 0 5 6 0 0 0 0 0 0
↑⍬ ←→ ⍬
↑2 3 0⍴0 ←→ 2 3 0⍴0
⍬⊃3 ←→ 3
2⊃'pick' ←→ 'c'
(⊂1 0)⊃2 2⍴'abcd' ←→ 'c'
1⊃'foo' 'bar' ←→ 'bar'
1 2⊃'foo' 'bar' ←→ 'r'
(2 2⍴0)⊃1 2 !! RANK ERROR
(⊂2 1⍴0)⊃2 2⍴0 !! RANK ERROR
(⊂2 2⍴0)⊃1 2 !! RANK ERROR
(⊂2 2)⊃1 2 !! RANK ERROR
(⊂0 2)⊃2 2⍴'ABCD' !! INDEX ERROR
a←' this is a test '⋄(a≠' ')⊂a ←→ 'this' 'is' (,'a') 'test'
↓1 2 3 ←→ ⊂1 2 3
↓(1 2)(3 4) ←→ ⊂(1 2)(3 4)
↓2 2⍴⍳4 ←→ (0 1)(2 3)
↓2 3 4⍴⍳24 ←→ 2 3⍴(0 1 2 3)(4 5 6 7)(8 9 10 11)(12 13 14 15)(16 17 18 19)(20 21 22 23)
2↓'abc' ←→ ,'c'
¯1↓'abc' ←→ 'ab'
5↓'abc' ←→ ''
0 ¯2↓3 3⍴⎕a ←→ 3 1⍴'ADG'
¯2 ¯1↓3 3⍴⎕a ←→ 1 2⍴'AB'
1↓3 3⍴⎕a ←→ 2 3⍴'DEFGHI'
⍬↓3 3⍴⍳9 ←→ 3 3⍴⍳9
1 1↓2 3 4⍴⎕a ←→ 1 2 4⍴'QRSTUVWX'
¯1 ¯1↓2 3 4⍴⎕a ←→ 1 2 4⍴'ABCDEFGH'
1↓0 ←→ ⍬
0 1↓2 ←→ 1 0⍴0
1 2↓3 ←→ 0 0⍴0
⍬↓0 ←→ 0
⍪2 3 4 ←→ 3 1⍴2 3 4
⍪0 ←→ 1 1⍴0
⍪2 2⍴2 3 4 5 ←→ 2 2⍴2 3 4 5
⍴⍪2 3⍴⍳6 ←→ 2 3
⍴⍪2 3 4⍴⍳24 ←→ 2 12
(2 3⍴⍳6)⍪9 ←→ 3 3⍴0 1 2 3 4 5 9 9 9
1⍪2 ←→ 1 2
1⊢2 ←→ 2
⊢3 ←→ 3
1⊣2 ←→ 1
⊣3 ←→ 3
≢0 ←→ 1
≢0 0 ←→ 2
≢⍬ ←→ 0
≢2 3⍴⍳6 ←→ 2
2≢2 ←→ 0
,2 13⍴⎕a ←→ ⎕a
,1 ←→ 1⍴1
⌹2 ←→ .5
⌹2 2⍴4 3 3 2 ←→ 2 2⍴¯2 3 3 ¯4
⌹2 2 2⍴⍳8 !! RANK ERROR
⌹2 3⍴⍳6 !! LENGTH ERROR
(4 4⍴12 1 4 10 ¯6 ¯5 4 7 ¯4 9 3 4 ¯2 ¯6 7 7)⌹93 81 93.5 120.5 ←→ .0003898888816687221 ¯.005029566573526544 .04730651764247189 .0705568912859835
17-⍨23 ←→ 6
7⍴⍨2 3 ←→ 2 3⍴7
+⍨2 ←→ 4
-⍨123 ←→ 0
¯3 ¯4*2 ←→ 9 16
0j1*2 ←→ ¯1
1j2*3 ←→ ¯11j¯2
.5j1.5*5 ←→ 9.875j¯0.375
9 4 0 ¯4 ¯9*.5 ←→ 3 2 0 0j2 0j3
'hello'} !! SYNTAX ERROR
(1 1⍴2)+1 1 1⍴3 ←→ 1 1 1⍴5
+0((1j¯2 ¯3j4)¯5.6) ←→ 0((1j2 ¯3j¯4)¯5.6)
1(2 3)+(4 5)6 ←→ (5 6)(8 9)
(2 3⍴1 2 3 4 5 6)+¯2 ←→ 2 3⍴¯1 0 1 2 3 4
1 2 3+4 5 !! LENGTH ERROR
(2 3⍴1 2 3 4 5 6)+2⍴¯2 !! RANK ERROR
(2 3⍴⍳6)+3 2⍴⍳6 !! LENGTH ERROR
(2 3⍴1 2 3 4 5 6)+2 3⍴¯2 ←→ 2 3⍴¯1 0 1 2 3 4
1j¯2+¯2j3 ←→ ¯1j1
+/⍬ ←→ 0
¯+¯¯ !! DOMAIN ERROR
1j¯+2j¯¯ !! DOMAIN ERROR
-4(1 2 3)1j2 ←→ ¯4(¯1 ¯2 ¯3)¯1j¯2
1-3 ←→ ¯2
5j2-3j8 ←→ 2j¯6
-/⍬ ←→ 0
×¯2 ¯1 0 1 2 ¯ ¯¯ 3j¯4 ←→ ¯1 ¯1 0 1 1 1 ¯1 .6j¯.8
7×8 ←→ 56
1j¯2×¯2j3 ←→ 4j7
2×1j¯2 ←→ 2j¯4
×/⍬ ←→ 1
÷2 ←→ .5
÷2j3 ←→ 0.15384615384615385J¯0.23076923076923078
0÷0 !! DOMAIN ERROR
27÷9 ←→ 3
4j7÷1j¯2 ←→ ¯2j3
0j2÷0j1 ←→ 2
5÷2j1 ←→ 2j¯1
÷/⍬ ←→ 1
*2 ←→ 7.38905609893065
*2j3 ←→ ¯7.315110094901103J1.0427436562359045
2 3 ¯2 ¯3*3 2 3 2 ←→ 8 9 ¯8 9
¯1*.5 ←→ 0j1
*/⍬ ←→ 1
1j2*3j4 ←→ .129009594074467j.03392409290517014
⍟123 ←→ 4.812184355372417
⍟0 ←→ ¯¯
⍟¯1 ←→ 0j1×○1
⍟123j456 ←→ 6.157609243895447J1.3073297857599793
12⍟34 ¯34 ←→ 1.419111870829036 1.419111870829036j1.26426988871305
¯12⍟¯34 ←→ 1.1612974763994781j¯.2039235425372641
1j2⍟3j4 ←→ 1.2393828252698689J¯0.5528462880299602
|¯8 0 8 ¯3.5 ←→ 8 0 8 3.5
|5j12 ←→ 13
3|5 ←→ 2
1j2|3j4 ←→ ¯1j1
7 ¯7∘.|31 28 ¯30 ←→ 2 3⍴3 0 5 ¯4 0 ¯2
¯0.2 0 0.2∘.|¯0.3 0 0.3 ←→ 3 3⍴¯0.1 0 ¯0.1 ¯0.3 0 0.3 0.1 0 0.1
|/⍬ ←→ 0
0|¯4 ←→ ¯4
0|¯4j5 ←→ ¯4j5
10|4j3 ←→ 4j3
4j6|7j10 ←→ 3j4
¯10 7j10 0.3|17 5 10 ←→ ¯3 ¯5j7 0.1
+\20 10 ¯5 7 ←→ 20 30 25 32
,\'AB' 'CD' 'EF' ←→ 'AB' 'ABCD' 'ABCDEF'
×\2 3⍴5 2 3 4 7 6 ←→ 2 3⍴5 10 30 4 28 168
∧\1 1 1 0 1 1 ←→ 1 1 1 0 0 0
-\1 2 3 4 ←→ 1 ¯1 2 ¯2
∨\0 0 1 0 0 1 0 ←→ 0 0 1 1 1 1 1
+\1 2 3 4 5 ←→ 1 3 6 10 15
+\(1 2 3)(4 5 6)(7 8 9) ←→ (1 2 3)(5 7 9)(12 15 18)
M←2 3⍴1 2 3 4 5 6⋄+\M ←→ 2 3⍴1 3 6 4 9 15
M←2 3⍴1 2 3 4 5 6⋄+⍀M ←→ 2 3⍴1 2 3 5 7 9
M←2 3⍴1 2 3 4 5 6⋄+\[0]M ←→ 2 3⍴1 2 3 5 7 9
,\'abc' ←→ 'a' 'ab' 'abc'
T←'ONE(TWO) BOOK(S)'⋄≠\T∊'()' ←→ 0 0 0 1 1 1 1 0 0 0 0 0 0 1 1 0
T←'ONE(TWO) BOOK(S)'⋄((T∊'()')⍱≠\T∊'()')/T ←→ 'ONE BOOK'
1 0 1\'ab' ←→ 'a b'
0 1 0 1 0\2 3 ←→ 0 2 0 3 0
(2 2⍴0)\'food' !! RANK ERROR
'abc'\'def' !! DOMAIN ERROR
1 0 1 1\'ab' !! LENGTH ERROR
1 0 1 1\'abcd' !! LENGTH ERROR
1 0 1\2 2⍴'ABCD' ←→ 2 3⍴'A BC D'
1 0 1⍀2 2⍴'ABCD' ←→ 3 2⍴'AB  CD'
1 0 1\[0]2 2⍴'ABCD' ←→ 3 2⍴'AB  CD'
1 0 1\[1]2 2⍴'ABCD' ←→ 2 3⍴'A BC D'
○2 ←→ 6.283185307179586
○2j2 ←→ 6.283185307179586j6.283185307179586
○'ABC' !! DOMAIN ERROR
¯12○2 2j3 ←→ ¯0.4161468365471j0.9092974268257 ¯0.02071873100224j0.04527125315609
¯11○2 2j3 ←→ 0j2 ¯3j2
¯10○2 2j3 ←→ 2 2j¯3
¯9○2 2j3 ←→ 2 2j3
¯8○2 2j3 ←→ 0j¯2.2360679774998 ¯2.8852305489054j2.0795565201111
¯7○0.5 2 2j3 ←→ 0.54930614433405 0.5493061443340548456976226185j¯1.570796326794896619231321692 0.1469466662255297520474327852j1.338972522294493561124193576
¯6○0.5 2 2j3 ←→ ¯1.1102230246252e¯16j1.0471975511966 1.316957896924816708625046347 1.983387029916535432347076903j1.000143542473797218521037812
¯5○2 2j3 ←→ 1.443635475178810342493276740 1.968637925793096291788665095j0.9646585044076027920454110595
¯4○2 0 ¯2 2j3 ←→ 1.7320508075689 0j1 ¯1.7320508075689 1.9256697360917j3.1157990841034
¯3○0.5 2 2j3 ←→ 0.46364760900081 1.107148717794090503017065460 1.409921049596575522530619385j0.2290726829685387662958818029
¯2○0.5 2 2j3 ←→ 1.0471975511966 0j1.316957896924816708625046347 1.000143542473797218521037812j¯1.983387029916535432347076903
¯1○0.5 2 2j3 ←→ 0.5235987755983 1.570796326794896619231321692j¯1.316957896924816708625046347 0.5706527843210994007102838797j1.983387029916535432347076903
0○0.5 2 2j3 ←→ 0.86602540378444 0j1.7320508075689 3.1157990841034j¯1.9256697360917
1e¯10>|.5-1○○÷6 ←→ 1 # sin(pi/6) = .5
1○1 2j3 ←→ 0.8414709848079 9.1544991469114j¯4.1689069599666
2○1 2j3 ←→ 0.54030230586814 ¯4.1896256909688j¯9.1092278937553
3○1 2j3 ←→ 1.5574077246549 ¯0.0037640256415041j1.0032386273536
4○2 2j3 ←→ 2.2360679774998 2.0795565201111j2.8852305489054
5○2 2j3 ←→ 3.626860407847 ¯3.5905645899858j0.53092108624852
6○2 2j3 ←→ 3.7621956910836 ¯3.7245455049153j0.51182256998738
7○2 2j3 ←→ 0.96402758007582 0.96538587902213j¯0.0098843750383225
8○2 2j3 ←→ 0j2.2360679774998 2.8852305489054j¯2.0795565201111
9○2 2j3 ←→ 2 2
10○¯2 ¯2j3 ←→ 2 3.605551275464
11○2  2j3 ←→ 0 3
12○2  2j3 ←→ 0 0.98279372324733
1○'a' !! DOMAIN ERROR
99○1 !! DOMAIN ERROR
99○1j2 !! DOMAIN ERROR
10,66 ←→ 10 66
⍬,⍬ ←→ ⍬
⍬,1 ←→ ,1
1,⍬ ←→ ,1
'ab','c','def' ←→ 'abcdef'
(2 3⍴⍳6),2 2⍴⍳4 ←→ 2 5⍴0 1 2 0 1 3 4 5 2 3
(2 3⍴⍳6),⍳2 ←→ 2 4⍴0 1 2 0 3 4 5 1
(3 2⍴⍳6),2 2⍴⍳4 !! LENGTH ERROR
(⍳2),2 3⍴⍳6 ←→ 2 4⍴0 0 1 2 1 3 4 5
(2 3⍴⍳6),9 ←→ 2 4⍴0 1 2 9 3 4 5 9
(2 3 4⍴⎕a),'*' ←→ 2 3 5⍴'ABCD*EFGH*IJKL*MNOP*QRST*UVWX*'
12=12 ←→ 1
2=12 ←→ 0
'Q'='Q' ←→ 1
1='1' ←→ 0
'1'=1 ←→ 0
11 7 2 9=11 3 2 6 ←→ 1 0 1 0
4=2+2 ←→ 1
2j3=2j3 ←→ 1
2j3=3j2 ←→ 0
0j0 ←→ 0
123j0 ←→ 123
2j¯3+¯2j3 ←→ 0
=/⍬ ←→ 1
'stoat'='toast' ←→ 0 0 0 0 1
(2 3⍴1 2 3 4 5 6)=2 3⍴3 3 3 5 5 5 ←→ 2 3⍴0 0 1 0 1 0
3=2 3⍴1 2 3 4 5 6 ←→ 2 3⍴0 0 1 0 0 0
3=(2 3⍴1 2 3 4 5 6)(2 3⍴3 3 3 5 5 5) ←→ (2 3⍴0 0 1 0 0 0)(2 3⍴1 1 1 0 0 0)
3≢5 ←→ 1
8≠8 ←→ 0
≠/⍬ ←→ 0
</⍬ ←→ 0
>/⍬ ←→ 0
≤/⍬ ←→ 1
≥/⍬ ←→ 1
3≡3 ←→ 1
3≡,3 ←→ 0
4 7.1 8≡4 7.2 8 ←→ 0
(3 4⍴⍳12)≡3 4⍴⍳12 ←→ 1
(3 4⍴⍳12)≡⊂3 4⍴⍳12 ←→ 0
('ab' 'c')≡'abc' ←→ 0
(2 0⍴0)≡(0 2⍴0) ←→ 0
≡4 ←→ 0
≡⍳4 ←→ 1
≡2 2⍴⍳4 ←→ 1
≡'abc'1 2 3(23 55) ←→ 2
≡'abc'(2 4⍴'abc'2 3'k') ←→ 3
8(÷∘-)2 ←→ ¯4
÷∘-2 ←→ ¯0.5
8÷∘-2 ←→ ¯4
⍴∘⍴2 3⍴⍳6 ←→ ,2
3⍴∘⍴2 3⍴⍳6 ←→ 2 3 2
3∘-1 ←→ 2
(-∘2)9 ←→ 7
1 2∪2 3 ←→ 1 2 3
'abc'∪'cad' ←→ 'abcd'
1∪1 ←→ ,1
1∪2 ←→ 1 2
1∪2 1 ←→ 1 2
1 2∪2 2 2 2 ←→ 1 2
2 3 3∪4 5 3 4 ←→ 2 3 3 4 5 4
⍬∪1 ←→ ,1
1 2∪⍬ ←→ 1 2
⍬∪⍬ ←→ ⍬
1 2∪2 2⍴3 !! RANK ERROR
(2 2⍴3)∪4 5 !! RANK ERROR
'ab' 'c'(0 1)∪'ab' 'de' ←→ 'ab' 'c'(0 1)'de'
∪3 17 ←→ 3 17
∪⍬ ←→ ⍬
∪17 ←→ ,17
∪3 17 17 17 ¯3 17 0 ←→ 3 17 ¯3 0
'abca'∩'dac' ←→ 'aca'
1'2'3∩⍳5 ←→ 1 3
1∩2 ←→ ⍬
1∩2 3⍴4 !! RANK ERROR
∩1 !! NONCE ERROR
10⊥3 2 6 9 ←→ 3269
8⊥3 1 ←→ 25
1760 3 12⊥1 2 8 ←→ 68
2 2 2⊥1 ←→ 7
0 20 12 4⊥2 15 6 3 ←→ 2667
1760 3 12⊥3 3⍴1 1 1 2 0 3 0 1 8 ←→ 60 37 80
60 60⊥3 13 ←→ 193
0 60⊥3 13 ←→ 193
60⊥3 13 ←→ 193
2⊥1 0 1 0 ←→ 10
2⊥1 2 3 4 ←→ 26
3⊥1 2 3 4 ←→ 58
2j3⊤4j5 6j7 8j9 ←→ 2j2 2j1 ¯1j2
10⊥3 4.5j1 ←→ 34.5j1
(4 3⍴1 1 1 2 2 2 3 3 3 4 4 4)⊥3 8⍴0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 0 1 0 1 ←→ 4 8⍴0 1 1 2 1 2 2 3 0 1 2 3 4 5 6 7 0 1 3 4 9 10 12 13 0 1 4 5 16 17 20 21
2⊥3 8⍴0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 0 1 0 1 ←→ 0 1 2 3 4 5 6 7
(2 1⍴2 10)⊥3 8 ⍴0 0 0 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 0 1 0 1 ←→ 2 8⍴0 1 2 3 4 5 6 7 0 1 10 11 100 101 110 111
2 3 4∘.×1 2 3 4 ←→ 3 4⍴2 4 6 8 3 6 9 12 4 8 12 16
0 1 2 3 4∘.!0 1 2 3 4 ←→ 5 5⍴1 1 1 1 1 0 1 2 3 4 0 0 1 3 6 0 0 0 1 4 0 0 0 0 1
1 2∘.,1+⍳3 ←→ 2 3⍴(1 1)(1 2)(1 3)(2 1)(2 2)(2 3)
2 3∘.↑1 2 ←→ (2 2⍴(1 0)(2 0)(1 0 0)(2 0 0))
⍴1 2∘.,1+⍳3 ←→ 2 3
⍴2 3∘.↑1 2 ←→ 2 2
⍴((4 3⍴0)∘.+5 2⍴0) ←→ 4 3 5 2
2 3∘.×4 5 ←→ 2 2⍴8 10 12 15
2 3∘ . ×4 5 ←→ 2 2⍴8 10 12 15
2 3∘.{⍺×⍵}4 5 ←→ 2 2⍴8 10 12 15
1 3 5 7+.=2 3 6 7 ←→ 2
7+.=8 8 7 7 8 7 5 ←→ 3
1 3 5 7∧.=2 3 6 7 ←→ 0
8 8 7 7 8 7 5+.=7 ←→ 3
1 3 5 7∧.=1 3 5 7 ←→ 1
7+.=7 ←→ 1
(3 2⍴5 ¯3 ¯2 4 ¯1 0)+.×2 2⍴6 ¯3 5 7 ←→ 3 2⍴15 ¯36 8 34 ¯6 3
⍴¨(⍳4)(0 0 0) ←→ (,4)(,3)
⍴¨'ab' 'cde' 'f' ←→ (,2)(,3)⍬
⍴   (2 2⍴⍳4)(⍳10)97.3(3 4⍴'K') ←→ ,4
⍴¨  (2 2⍴⍳4)(⍳10)97.3(3 4⍴'K') ←→ (2 2)(,10)⍬(3 4)
⍴⍴¨ (2 2⍴⍳4)(⍳10)97.3(3 4⍴'K') ←→ ,4
⍴¨⍴¨(2 2⍴⍳4)(⍳10)97.3(3 4⍴'K') ←→ (,2)(,1)(,0)(,2)
1 2 3,¨4 5 6 ←→ (1 4)(2 5)(3 6)
2 3↑¨'monday' 'tuesday' ←→ 'mo' 'tue'
2↑¨'monday' 'tuesday' ←→ 'mo' 'tu'
2 3⍴¨1 2 ←→ (1 1)(2 2 2)
4 5⍴¨'the' 'cat' ←→ 'thet' 'catca'
{1+⍵*2}¨2 3⍴⍳6 ←→ 2 3⍴1 2 5 10 17 26
1760 3 12⊤75 ←→ 2 0 3
3 12⊤75 ←→ 0 3
100000 12⊤75 ←→ 6 3
16 16 16 16⊤100 ←→ 0 0 6 4
1760 3 12⊤75.3 ←→ 2 0(75.3-72)
0 1⊤75.3 ←→ 75(75.3-75)
2 2 2 2 2⊤1 2 3 4 5 ←→ 5 5⍴0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 1 0 0 1 0 1 0 1
10⊤5 15 125 ←→ 5 5 5
0 10⊤5 15 125 ←→ 2 3⍴0 1 12 5 5 5
0j1 2j3 4j5⊤6j7 ←→ 0 ¯2j2 2j2
(8 3⍴2 0 0 2 0 0 2 0 0 2 0 0 2 8 0 2 8 0 2 8 16 2 8 16)⊤75 ←→ 8 3⍴0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 1 0 1 1 4 1 3 11
2 3 4 5 6∊1 2 3 5 8 13 21 ←→ 1 1 0 1 0
5∊1 2 3 5 8 13 21 ←→ 1
∊17 ←→ ,17
⍴∊(1 2 3)'ab'(4 5 6) ←→ ,8
∊2 2⍴(1+2 2⍴⍳4)'ab'(1+2 3⍴⍳6)(7 8) ←→ 1 2 3 4,'ab',1 2 3 4 5 6 7 8
!0 5 21 ←→ 1 120 51090942171709440000
!1.5 ¯1.5 ¯2.5 ←→ 1.3293403881791 ¯3.544907701811 2.3632718012074
!¯200.5 ←→ 0
!¯1 !! DOMAIN ERROR
!¯200 !! DOMAIN ERROR
2!4 ←→ 6
3!20 ←→ 1140
2!6 12 20 ←→ 15 66 190
(2 3⍴1+⍳6)!2 3⍴3 6 9 12 15 18 ←→ 2 3⍴3 15 84 495 3003 18564
0.5!1 ←→ 1.2732395447351612
1.2!3.4 ←→ 3.795253463731253
!/⍬ ←→ 1
(2!1000)=499500 ←→ 1
(998!1000)=499500 ←→ 1
0.5!¯1 !! DOMAIN ERROR
3!5 ←→ 10    ⍝ 0 0 0   (!⍵)÷(!⍺)×!⍵-⍺
5!3 ←→ 0     ⍝ 0 0 1   0
3!¯5 ←→ ¯35  ⍝ 0 1 1   (¯1*⍺)×⍺!⍺-⍵+1
¯3!5 ←→ 0    ⍝ 1 0 0   0
¯5!¯3 ←→ 6   ⍝ 1 1 0   (¯1*⍵-⍺)×(|⍵+1)!(|⍺+1)
¯3!¯5 ←→ 0   ⍝ 1 1 1   0
⍎'+/2 2⍴1 2 3 4' ←→ 3 7
⍴⍎'123 456' ←→ ,2
⍎'{⍵*2}⍳5' ←→ 0 1 4 9 16
⍎'let' !!
⍎'1 2 (3' !!
'ab'⍷'bababc' ←→ 0 1 0 1 0 0
'ab' 'cde'⍷'ab' 'cde' 'fg' ←→ 1 0 0
'cd'⍷'abcd efghi' ←→ 0 0 1 0 0 0 0 0 0 0
'day'⍷7 9⍴'sunday   monday   tuesday  wednesdaythursday friday   saturday ' ←→ 7 9⍴0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0
(2 2⍴'abcd')⍷'abcd' ←→ 4⍴0
(1 2)(3 4)⍷'start'(1 2 3)(1 2)(3 4) ←→ 0 0 1 0
(2 2⍴7 8 12 13)⍷1+4 5⍴⍳20 ←→ 4 5⍴0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
1⍷⍳5 ←→ 0 1 0 0 0
1 2⍷⍳5 ←→ 0 1 0 0 0
⍬⍷⍳5 ←→ 1 1 1 1 1
⍬⍷⍬ ←→ ⍬
1⍷⍬ ←→ ⍬
1 2 3⍷⍬ ←→ ⍬
(2 3 0⍴0)⍷3 4 5⍴0 ←→ 3 4 5⍴1
(2 3 4⍴0)⍷3 4 0⍴0 ←→ 3 4 0⍴0
(2 3 0⍴0)⍷3 4 0⍴0 ←→ 3 4 0⍴0
⌊123 12.3 ¯12.3 ¯123 ←→ 123 12 ¯13 ¯123
⌊12j3 1.2j2.3 1.2j¯2.3 ¯1.2j2.3 ¯1.2j¯2.3 ←→ 12j3 1j2 1j¯3 ¯1j2 ¯1j¯3
⌊0 5 ¯5 (○1) ¯1.5 ←→ 0 5 ¯5 3 ¯2
⌊'a' !! DOMAIN ERROR
3⌊5 ←→ 3
⌊/⍬ ←→ ¯
⌈123 12.3 ¯12.3 ¯123 ←→ 123 13 ¯12 ¯123
⌈12j3 1.2j2.3 1.2j¯2.3 ¯1.2j2.3 ¯1.2j¯2.3 ←→ 12j3 1j3 1j¯2 ¯1j3 ¯1j¯2
⌈0 5 ¯5(○1)¯1.5 ←→ 0 5 ¯5 4 ¯1
⌈'a' !! DOMAIN ERROR
3⌈5 ←→ 5
⌈/⍬ ←→ ¯¯
(+/÷⍴)4 5 10 7 ←→ ,6.5
(+,-,×,÷)2 ←→ 2 ¯2 1 .5
1(+,-,×,÷)2 ←→ 3 ¯1 2 .5
a←1⋄b←¯22⋄c←85⋄√←{⍵*.5}⋄((-b)(+,-)√(b*2)-4×a×c)÷2×a ←→ 17 5
⍕123 ←→ 1 3⍴'123'
⍕123 456 ←→ 1 7⍴'123 456'
⍕123 'a' ←→ 1 5⍴'123 a'
⍕12 'ab' ←→ 1 7⍴'12  ab '
⍕1 2⍴'a' ←→ 1 2⍴'a'
⍕2 2⍴'a' ←→ 2 2⍴'a'
⍕2 2⍴5 ←→ 2 3⍴'5 5','5 5'
⍕2 2⍴0 0 0 'a' ←→ 2 3⍴'0 0','0 a'
⍕2 2⍴0 0 0 'ab' ←→ 2 6⍴'0   0 ','0  ab '
⍕2 2⍴0 0 0 123 ←→ 2 5⍴('0   0','0 123')
⍕4 3⍴'---' '---' '---' 1 2 3 4 5 6 100 200 300 ←→ 4 17⍴(' ---   ---   --- ','   1     2     3 ','   4     5     6 ',' 100   200   300 ')
⍕1 ⍬ 2 '' 3 ←→ 1 11⍴'1    2    3'
⍕∞ ←→ 1 1⍴'∞'
⍕¯∞ ←→ 1 2⍴'¯∞'
⍕¯1 ←→ 1 2⍴'¯1'
⍕¯1e¯100J¯2e¯99 ←→ 1 14⍴'¯1e¯100J¯2e¯99'
⍋13 8 122 4 ←→ 3 1 0 2
a←13 8 122 4⋄a[⍋a] ←→ 4 8 13 122
⍋'ZAMBIA' ←→ 1 5 3 4 2 0
s←'ZAMBIA'⋄s[⍋s] ←→ 'AABIMZ'
t←3 3⍴'BOBALFZAK'⋄⍋t ←→ 1 0 2
t←3 3⍴4 5 6 1 1 3 1 1 2⋄⍋t ←→ 2 1 0
t←3 3⍴4 5 6 1 1 3 1 1 2⋄t[⍋t;] ←→ 3 3⍴ 1 1 2 1 1 3 4 5 6
a←3 2 3⍴2 3 4 0 1 0 1 1 3 4 5 6 1 1 2 10 11 12⋄a[⍋a;;] ←→ 3 2 3⍴1 1 2 10 11 12 1 1 3 4 5 6 2 3 4 0 1 0
a←3 2 5⍴'joe  doe  bob  jonesbob  zwart'⋄a[⍋a;;] ←→ 3 2 5⍴'bob  jonesbob  zwartjoe  doe  '
'ZYXWVUTSRQPONMLKJIHGFEDCBA'⍋'ZAMBIA' ←→ 0 2 4 3 1 5
⎕A←'ABCDEFGHIJKLMNOPQRSTUVWXYZ'⋄(⌽⎕A)⍋3 3⍴'BOBALFZAK' ←→ 2 0 1
a←6 4⍴'ABLEaBLEACREABELaBELACES'⋄a[(2 26⍴'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz')⍋a;] ←→ 6 4⍴'ABELaBELABLEaBLEACESACRE'
a←6 4⍴'ABLEaBLEACREABELaBELACES'⋄a[('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz')⍋a;] ←→ 6 4⍴'ABELABLEACESACREaBELaBLE'
⍋0 1 2 3 4 3 6 6 4 9 1 11 12 13 14 15 ←→ 0 1 10 2 3 5 4 8 6 7 9 11 12 13 14 15
⍒3 1 8 ←→ 2 0 1
f←{⍺+2×⍵}⋄f/⍬ !! DOMAIN ERROR
f←{⍺+2×⍵}⋄(f⍁123)/⍬ ←→ 123
f←{⍺+2×⍵}⋄(456⍁f)/⍬ ←→ 456
f←{⍺+2×⍵}⋄g←f⍁789⋄f/⍬ !! DOMAIN ERROR
{}⍁1 2 !! RANK ERROR
({}⍁(1 1 1⍴123))/⍬ ←→ 123
2 5 9 14 20⍳9 ←→ 2
2 5 9 14 20⍳6 ←→ 5
'abcde'⍳'d' ←→ 3
⎕a⍳'NGN/' ←→ 13 6 13 26
'ab' 'cd' 'efg'⍳'cd' 'efh' ←→ 1 3
1 3 2 0 3⍳⍳5 ←→ 3 0 2 1 5
'cat' 'dog' 'mouse'⍳'dog' 'bird' ←→ 1 3
1⍳1 !! RANK ERROR
(1 2⍴3)⍳3 !! RANK ERROR
1 1⍳1 ←→ 0
⍬⍳1 2 ←→ 0 0
1 2⍳⍬ ←→ ⍬
⍳5 ←→ 0 1 2 3 4
⍴⍳5 ←→ 1⍴5
⍳0 ←→ ⍬
⍴⍳0 ←→ ,0
⍴⍳2 3 4 ←→ 2 3 4
⍳¯1 !! DOMAIN ERROR
⍳2 3 4 ←→ 2 3 4⍴(0 0 0)(0 0 1)(0 0 2)(0 0 3)(0 1 0)(0 1 1)(0 1 2)(0 1 3)(0 2 0)(0 2 1)(0 2 2)(0 2 3)(1 0 0)(1 0 1)(1 0 2)(1 0 3)(1 1 0)(1 1 1)(1 1 2)(1 1 3)(1 2 0)(1 2 1)(1 2 2)(1 2 3)
⍴⊂2 3⍴⍳6 ←→ ⍬
⍴⍴⊂2 3⍴⍳6 ←→ ,0
⊂[0]2 3⍴⍳6 ←→ (0 3)(1 4)(2 5)
⍴⊂[0]2 3⍴⍳6 ←→ ,3
⊂[1]2 3⍴⍳6 ←→ (0 1 2)(3 4 5)
⍴⊂[1]2 3⍴⍳6 ←→ ,2
⊃⊂[1 0]2 3⍴⍳6 ←→ 3 2⍴0 3 1 4 2 5
⍴⊂[1 0]2 3⍴⍳6 ←→ ⍬
⍴⊃⊂⊂1 2 3 ←→ ⍬
0 0 1 1∨0 1 0 1 ←→ 0 1 1 1
12∨18 ←→ 6
299∨323 ←→ 1
12345∨12345 ←→ 12345
0∨123 ←→ 123
123∨0 ←→ 123
∨/⍬ ←→ 0
¯12∨18 ←→ 6
12∨¯18 ←→ 6
¯12∨¯18 ←→ 6
135j¯14∨155j34 ←→ 5j12
2 3 4∨0j1 1j2 2j3 ←→ 1 1 1
2j2 2j4∨5j5 4j4 ←→ 1j1 2
1.5∨2.5 !! DOMAIN ERROR
'a'∨1 !! DOMAIN ERROR
1∨'a' !! DOMAIN ERROR
'a'∨'b' !! DOMAIN ERROR
0 0 1 1∧0 1 0 1 ←→ 0 0 0 1
1∧3 3⍴1 1 1 0 0 0 1 0 1 ←→ 3 3⍴1 1 1 0 0 0 1 0 1
∧/3 3⍴1 1 1 0 0 0 1 0 1 ←→ 1 0 0
12∧18 ←→ 36
299∧323 ←→ 96577
123∧123 ←→ 123
0∧123 ←→ 0
123∧0 ←→ 0
∧/⍬ ←→ 1
¯12∧18 ←→ ¯36
12∧¯18 ←→ ¯36
¯12∧¯18 ←→ 36
1.5∧2.5 !! DOMAIN ERROR
'a'∧1 !! DOMAIN ERROR
1∧'a' !! DOMAIN ERROR
'a'∧'b' !! DOMAIN ERROR
135j¯14∧155j34 ←→ 805j¯1448
2 3 4∧0j1 1j2 2j3 ←→ 0j2 3j6 8j12
2j2 2j4∧5j5 4j4 ←→ 10j10 ¯4j12
0 0 1 1⍱0 1 0 1 ←→ 1 0 0 0
0⍱2 !! DOMAIN ERROR
0 0 1 1⍲0 1 0 1 ←→ 1 1 1 0
0⍲2 !! DOMAIN ERROR
~0 1 ←→ 1 0
~2 !! DOMAIN ERROR
({⍵+1}⍣5)3 ←→ 8
({⍵+1}⍣0)3 ←→ 3
(⍴⍣3)2 2⍴⍳4 ←→ ,1
'a'(,⍣3)'b' ←→ 'aaab'
1{⍺+÷⍵}⍣=1 ←→ 1.618033988749895
c←0⋄5⍣{c←c+1}0⋄c ←→ 5
⎕IO ←→ 0
⎕IO←0 ←→ 0
'b(c+)d'⎕RE'abcd' ←→ 1'bcd'(,'c')
'B(c+)d'⎕RE'abcd' ←→ ⍬
'a(b'⎕RE'c' !! DOMAIN ERROR
⎕UCS'a' ←→ 97
⎕UCS'ab' ←→ 97 98
⎕UCS 2 2⍴97+⍳4 ←→ 2 2⍴'abcd'
n←6⋄r←?n⋄(0≤r)∧(r<n) ←→ 1
?1 ←→ 0
?0 !! DOMAIN ERROR
?1.5 !! DOMAIN ERROR
?'a' !! DOMAIN ERROR
?1j2 !! DOMAIN ERROR
?∞ !! DOMAIN ERROR
n←100⋄(+/n?n)=(+/⍳n) ←→ 1 # a permutation (an 'n?n' dealing) contains all 0...n
n←100⋄A←(n÷2)?n⋄∧/(0≤A),A<n ←→ 1 # any number x in a dealing is 0 <= x < n
0?100 ←→ ⍬
0?0 ←→ ⍬
1?1 ←→ ,0
1?1 1 !! LENGTH ERROR
5?3 !! DOMAIN ERROR
¯1?3 !! DOMAIN ERROR
↗'CUSTOM ERROR' !! CUSTOM ERROR
2 5⍴¨⊂1 2 3 ←→ (1 2)(1 2 3 1 2)
⍴1 2 3⍴0 ←→ 1 2 3
⍴⍴1 2 3⍴0 ←→ ,3
2 3⍴⍳5 ←→ 2 3⍴0 1 2 3 4 0
⍬⍴123 ←→ 123
⍬⍴⍬ ←→ 0
2 3⍴⍬ ←→ 2 3⍴0
2 3⍴⍳7 ←→ 2 3⍴0 1 2 3 4 5
⍴0 0 ←→ 1⍴2
⍴⍴0 ←→ 1⍴0
⍴⍴⍴0 ←→ 1⍴1
⍴⍴⍴0 0 ←→ 1⍴1
⍴'a' ←→ 0⍴0
⍴'ab' ←→ 1⍴2
⍴2 3 4⍴0 ←→ 2 3 4
1⌽1 2 3 4 5 6 ←→ 2 3 4 5 6 1
3⌽'abcdefgh' ←→ 'defghabc'
3⌽2 5⍴1 2 3 4 5 6 7 8 9 0 ←→ 2 5⍴4 5 1 2 3 9 0 6 7 8
¯2⌽'abcdefgh' ←→ 'ghabcdef'
1⌽3 3⍴⍳9 ←→ 3 3⍴1 2 0 4 5 3 7 8 6
0⌽1 2 3 4 ←→ 1 2 3 4
0⌽1234 ←→ 1234
5⌽⍬ ←→ ⍬
⌽1 2 3 4 5 6 ←→ 6 5 4 3 2 1
⌽(1 2)(3 4)(5 6) ←→ (5 6)(3 4)(1 2)
⌽'bob won pots' ←→ 'stop now bob'
⌽2 5⍴1 2 3 4 5 6 7 8 9 0 ←→ 2 5⍴5 4 3 2 1 0 9 8 7 6
⌽[0]2 5⍴1 2 3 4 5 6 7 8 9 0 ←→ 2 5⍴6 7 8 9 0 1 2 3 4 5
⊖1 2 3 4 5 6 ←→ 6 5 4 3 2 1
⊖(1 2)(3 4)(5 6) ←→ (5 6)(3 4)(1 2)
⊖'bob won pots' ←→ 'stop now bob'
⊖2 5⍴1 2 3 4 5 6 7 8 9 0 ←→ 2 5⍴6 7 8 9 0 1 2 3 4 5
⊖[1]2 5⍴1 2 3 4 5 6 7 8 9 0 ←→ 2 5⍴5 4 3 2 1 0 9 8 7 6
1⊖3 3⍴⍳9 ←→ 3 3⍴3 4 5 6 7 8 0 1 2
+/3 ←→ 3
+/3 5 8 ←→ 16
⌈/82 66 93 13 ←→ 93
×/2 3⍴1 2 3 4 5 6 ←→ 6 120
-/3 0⍴42 ←→ 3⍴0
2,/'ab' 'cd' 'ef' 'hi' ←→ 'abcd' 'cdef' 'efhi'
3,/'ab' 'cd' 'ef' 'hi' ←→ 'abcdef' 'cdefhi'
2+/1+⍳5 ←→ 3 5 7 9
5+/1+⍳8 ←→ 15 20 25 30
10+/1+⍳10 ←→ ,55
11+/1+⍳10 ←→ ⍬
12+/1+⍳10 !! LENGTH ERROR
2-/3 4 9 7 ←→ ¯1 ¯5 2
¯2-/3 4 9 7 ←→ 1 5 ¯2
0 1 0 1/'abcd' ←→ 'bd'
m←45 60 33 50 66 19⋄(m≥50)/m ←→ 60 50 66
1/'ab' ←→ 'ab'
1 1 1 1 0/12 14 16 18 20 ←→ 12 14 16 18
m←45 60 33 50 66 19⋄(m=50)/⍳≢m ←→ ,3
0/'ab' ←→ ⍬
0 1 0/1+2 3⍴⍳6 ←→ 2 1⍴2 5
1 0/[0]1+2 3⍴⍳6 ←→ 1 3⍴1 2 3
1 0⌿1+2 3⍴⍳6 ←→ 1 3⍴1 2 3
3/5 ←→ 5 5 5
2 ¯2 2/1+2 3⍴⍳6 ←→ 2 6⍴  1 1 0 0 3 3  4 4 0 0 6 6
1 1 ¯2 1 1/1 2(2 2⍴⍳4)3 4 ←→ 1 2 0 0 3 4
2 3 2/'abc' ←→ 'aabbbcc'
2/'def' ←→ 'ddeeff'
5 0 5/1 2 3 ←→ 1 1 1 1 1 3 3 3 3 3
2/1+2 3⍴⍳6 ←→ 2 6⍴ 1 1 2 2 3 3  4 4 5 5 6 6
2⌿1+2 3⍴⍳6 ←→ 4 3⍴ 1 2 3  1 2 3  4 5 6  4 5 6
2 ¯1 2/[1]3 1⍴7 8 9 ←→ 3 5⍴7 7 0 7 7 8 8 0 8 8 9 9 0 9 9
2 ¯1 2/[1]3 1⍴'abc' ←→ 3 5⍴'aa aabb bbcc cc'
2 ¯2 2/7 ←→ 7 7 0 0 7 7
2 3/3 1⍴'abc' ←→ 3 5⍴'aaaaabbbbbccccc'
1⌷3 5 8 ←→ 5
(3 5 8)[1] ←→ 5
(3 5 8)[⍬] ←→ ⍬
(2 2 0)(1 2)⌷3 3⍴⍳9 ←→ 3 2⍴7 8 7 8 1 2
¯1⌷3 5 8 !! INDEX ERROR
(⊂2 3⍴2 0 3 0 1 2)⌷111 222 333 444 ←→ 2 3⍴333 111 444 111 222 333
1 0   ⌷3 4⍴11 12 13 14 21 22 23 24 31 32 33 34 ←→ 21
2⌷111 222 333 444 ←→ 333
1     ⌷3 4⍴11 12 13 14 21 22 23 24 31 32 33 34 ←→ 21 22 23 24
(⊂3 2)⌷111 222 333 444 ←→ 444 333
2(1 0)⌷3 4⍴11 12 13 14 21 22 23 24 31 32 33 34 ←→ 32 31
a←2 2⍴0⋄a[;0]←1⋄a ←→ 2 2⍴1 0 1 0
(1 2)0⌷3 4⍴11 12 13 14 21 22 23 24 31 32 33 34 ←→ 21 31
a←2 3⍴0⋄a[1;0 2]←1⋄a ←→ 2 3⍴0 0 0 1 0 1
(23 54 38)[0] ←→ 23
(2 3⍴100 101 102 110 111 112)[1;2] ←→ 112
(23 54 38)[1] ←→ 54
(2 3⍴100 101 102 110 111 112)[1;¯1] !! INDEX ERROR
(23 54 38)[2] ←→ 38
(2 3⍴100 101 102 110 111 112)[10;1] !! INDEX ERROR
(23 54 38)[3] !! INDEX ERROR
(2 3⍴100 101 102 110 111 112)[1;] ←→ 110 111 112
(23 54 38)[¯1] !! INDEX ERROR
(2 3⍴100 101 102 110 111 112)[;1] ←→ 101 111
(23 54 38)[0 2] ←→ 23 38
' X'[(3 3⍴⍳9)∊1 3 6 7 8] ←→ 3 3⍴' X X  XXX'
'hello'[1] ←→ 'e'
'ipodlover'[1 2 5 8 3 7 6 0 4] ←→ 'poordevil'
('axlrose'[4 3 0 2 5 6 1])[⍳4] ←→ 'oral'
(1 2 3)[⍬] ←→ ⍬
⍴(1 2 3)[1 2 3 0 5⍴0] ←→ 1 2 3 0 5
(⍳3)[] ←→ ⍳3
⍴(3 3⍴⍳9)[⍬;⍬] ←→ 0 0
a←⍳5⋄a[1 3]←7 8⋄a ←→ 0 7 2 8 4
a←1 2 3⋄a[1]←4⋄a ←→ 1 4 3
a←⍳5⋄a[1 3]←7⋄a ←→ 0 7 2 7 4
a←2 2⍴⍳4⋄a[0;0]←4⋄a ←→ 2 2⍴4 1 2 3
a←⍳5⋄a[1]←7 8⋄a !! RANK ERROR
a←3 4⍴⍳12⋄a[;1 2]←99 ←→ 3 4⍴0 99 99 3 4 99 99 7 8 99 99 11
a←5 5⍴0⋄a[1 3;2 4]←2 2⍴1+⍳4⋄a ←→ 5 5⍴0 0 0 0 0 0 0 1 0 2 0 0 0 0 0 0 0 3 0 4 0 0 0 0 0
a←'this is a test'⋄a[0 5]←'TI' ←→ 'This Is a test'
a←0 4 8⋄10+(a[0 2]←7 9) ←→ 17 14 19
a←1 2 3⋄a[⍬]←4⋄a ←→ 1 2 3
a←3 3⍴⍳9⋄a[⍬;1 2]←789⋄a ←→ 3 3⍴⍳9
a←1 2 3⋄a[]←4 5 6⋄a ←→ 4 5 6
2↑⎕a ←→ 'AB'
¯3↑⎕a ←→ 'XYZ'
5↑'abc' ←→ 'abc  '
¯5↑'abc' ←→ '  abc'
3↑⍳2 ←→ 0 1 0
¯1↑⍳4 ←→ ,3
⍴1↑(2 2⍴⍳4)(⍳10) ←→ ,1
2↑1 ←→ 1 0
2 ¯2↑1 1⍴1 ←→ 2 2⍴0 1 0 0
3 3↑1 1⍴'a' ←→ 3 3⍴'a        '
2 3↑1+4 3⍴⍳12 ←→ 2 3⍴1 2 3 4 5 6
¯1 3↑1+4 3⍴⍳12 ←→ 1 3⍴10 11 12
1 2↑1+4 3⍴⍳12 ←→ 1 2⍴1 2
3↑⍬ ←→ 0 0 0
¯2↑⍬ ←→ 0 0
0↑⍬ ←→ ⍬
3 3↑1 ←→ 3 3⍴1 0 0 0 0 0 0 0 0
2↑3 3⍴⍳9 ←→ 2 3⍴⍳6
¯2↑3 3⍴⍳9 ←→ 2 3⍴3+⍳6
4↑3 3⍴⍳9 ←→ 4 3⍴(⍳9),0 0 0
⍬↑3 3⍴⍳9 ←→ 3 3⍴⍳9
⊃(1 2 3)(4 5 6) ←→ 1 2 3
⊃(1 2)(3 4 5) ←→ 1 2
⊃'ab' ←→ 'a'
⊃123 ←→ 123
⊃⍬ ←→ 0
0⍉1 2 ←→ 1 2
(2 2⍴⍳4)⍉2 2 2 2⍴⍳3 !! RANK ERROR
1 0⍉2 2 2⍴⍳8 !! LENGTH ERROR
¯1⍉1 2 !! DOMAIN ERROR
'a'⍉1 2 !! DOMAIN ERROR
3⍉0 1 !! RANK ERROR
2 0 1⍉2 3 4⍴⎕a ←→ 3 4 2⍴'AMBNCODPEQFRGSHTIUJVKWLX'
0 0 2⍉2 3 4⍴⍳24 !! RANK ERROR
0 0⍉3 3⍴⍳9 ←→ 0 4 8
0 0⍉2 3⍴⍳9 ←→ 0 4
0 0 0⍉3 3 3⍴⍳27 ←→ 0 13 26
0 1 0⍉3 3 3⍴⎕a ←→ 3 3⍴'ADGKNQUXA'
⍉⍬ ←→ ⍬
⍉'' ←→ ''
⍉⍳3 ←→ 0 1 2
⍉2 3⍴⍳6 ←→ 3 2⍴0 3 1 4 2 5
⍉2 3 4⍴⎕a ←→ 4 3 2⍴'AMEQIUBNFRJVCOGSKWDPHTLX'
({1}⍠{2})0 ←→ 1
0({1}⍠{2})0 ←→ 2
x⋄x←0 !! VALUE ERROR
⌽¨⍣3⊢(1 2)3(4 5 6) ←→ (2 1)3(6 5 4)
{}0 ←→ ⍬
a←5 ←→ 5
a×a←2 5 ←→ 4 25
r←3⋄get_c←{2×○r}⋄get_S←{○r*2}⋄bef←.01×⌊100×r c S⋄r←r+1⋄aft←.01×⌊100×r c S⋄bef aft ←→ (3 18.84 28.27)(4 25.13 50.26)
{⍺}0 !! VALUE ERROR
{x}0⋄x←0 !! VALUE ERROR
{⍫1⋄2}⍬ ←→ 1
c←{}⋄x←{c←⍫⋄1}⍬⋄{x=1:c 2⋄x}⍬ ←→ 2
{1+1}1 ←→ 2
{⍵=0:1⋄2×∇⍵-1}5 ←→ 32
{⍵<2:1⋄(∇⍵-1)+∇⍵-2}8 ←→ 34
⊂{⍺⍺ ⍺⍺ ⍵}'ab' ←→ ⊂⊂'ab'
⊂{⍺⍺ ⍵⍵ ⍵}⌽'ab' ←→ ⊂'ba'
⊂{⍶⍶⍵}'ab' ←→ ⊂⊂'ab'
⊂{⍶⍹⍵}⌽'ab' ←→ ⊂'ba'
+{⍵⍶⍵}1 2 ←→ 2 4
f←{⍵⍶⍵}⋄+f 1 2 ←→ 2 4
tw←{⍶⍶⍵}⋄*tw 2 ←→ 1618.1779919126539
f←{-⍵;⍺×⍵}⋄(f 5)(3 f 5) ←→ ¯5 15
f←{;}⋄(f 5)(3 f 5) ←→ ⍬⍬
²←{⍶⍶⍵;⍺⍶⍺⍶⍵}⋄*²2 ←→ 1618.1779919126539
²←{⍶⍶⍵;⍺⍶⍺⍶⍵}⋄3*²2 ←→ 19683
H←{⍵⍶⍹⍵;⍺⍶⍹⍵}⋄+H÷2 ←→ 2.5
H←{⍵⍶⍹⍵;⍺⍶⍹⍵}⋄7+H÷2 ←→ 7.5
⍴'' ←→ ,0
⍴'x' ←→ ⍬
⍴'xx' ←→ ,2
⍴'a''b' ←→ ,3
⍴'''a' ←→ ,2
⍴'a''' ←→ ,2
⍴'''' ←→ ⍬
∞ ←→ ¯
¯∞ ←→ ¯¯
¯∞j¯∞ ←→ ¯¯j¯¯
∞∞ ←→ ¯ ¯
∞¯ ←→ ¯ ¯
1+«2+3» ←→ 6
⍴x[⍋x←6?49] ←→ ,6
(a b)←1 2⋄a ←→ 1
(a b)←1 2⋄b ←→ 2
(a b)←+ !!
(a b c)←3 4 5⋄a b c ←→ 3 4 5
(a b c)←6⋄a b c ←→ 6 6 6
(a b c)←7 8⋄a b c !!
((a b)c)←3(4 5)⋄a b c ←→ 3 3(4 5)
