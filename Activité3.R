> vente<-c(120, 118,122,110,130,122,120,132,124,112,116,108,116,116,124,122,114,122,122,130)
> mean(vente)
[1] 120
> # la variance totale VT: somme des y^2 - n*(mean(y)^2)
> VT<-sum(vente^2)-length(vente)*((mean(vente))^2)
> VT
[1] 792
> VT<-sum((vente-120)^2)
> VT
[1] 792
> # variance totale= 792
> B<-120
> # B : variance between
> # variance within dans les groupes: VT -B
> W<-VT-B
> W
[1] 672
> (40*16)/672
[1] 0.952381
> 33.5/8
[1] 4.1875
> #♣ Exercice 1 TD4 ANOVA à un facteur
> notes<-c(5,	4,
+          4,	5.5,
+          1.5,	4.5,
+          6,	6.5,
+          3,	4.5,
+          3.5,	5.5,
+          3,	1,
+          2.5,	2,
+          1.5,
+              2.5)
> notes
 [1] 5.0 4.0 4.0 5.5 1.5 4.5 6.0 6.5 3.0 4.5 3.5 5.5 3.0 1.0 2.5 2.0 1.5 2.5
> mean(notes)
[1] 3.666667
> # calculons la variance totale VT
> VT<-sum((notes-mean(notes))^2)
> VT
[1] 46.5
> (3.25-3.6666666666666)^2*10+(4.187-3.6666666666)^2*8
[1] 3.902085
> 46.5-3.902085
[1] 42.59792
> (3.902*16)/42.598
[1] 1.465609
> # exercice 2  TD4
> notes<-c(14,	16,	14,
+          6,	14,	16,
+          12,	8,	14,
+          10,	8,	14,
+          8,	14,	12)
> mean(notes)
[1] 12
> VT<-sum((notes-mean(notes))^2)
> VT
[1] 144
> 240/104
[1] 2.307692
> 124/6
[1] 20.66667
> 169/6
[1] 28.16667
> score<-c(16,	18,	19,	20,
+          17	,20,	27,	23,
+          17,	20,	28,	24,
+          19,	21	,29,	25,
+          21,	22,	32,	26,
+          24,	23,	34,	29)
> mean(score)
[1] 23.08333
> VT<-sum((score-mean(score))^2)
> VT
[1] 543.8333
> B<-((19-23.0833333)^2+(20.66666666-23.08333333)^2+(28.1666666666-23.0833333)^2+(24.5-23.083333333)^2)*6
> B
[1] 302.1667
> 543.8333333-302.16666666
[1] 241.6667
> F_obs<-(302.1666666/3)/(241.6666666/20)
> F_obs
[1] 8.335632