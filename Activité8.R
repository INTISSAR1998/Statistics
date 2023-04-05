vente<-c(15, 12, 20, 85, 50, 90)
> vente
[1] 15 12 20 85 50 90
> mean(vente)
[1] 45.33333
> sum(vente)/length(vente)
[1] 45.33333
> sd(vente)
[1] 35.39303
> length(vente)
[1] 6
> nom<-c("mohamed", "oumeima", "lamjed", "mehrez", "zakaria")
> nom
[1] "mohamed" "oumeima" "lamjed" 
[4] "mehrez"  "zakaria"
> matrix(data=c(2, 3, 1, 0, -1, 4, 6, -2, 1),nrow = 3, ncol = 3)
     [,1] [,2] [,3]
[1,]    2    0    6
[2,]    3   -1   -2
[3,]    1    4    1
> matrix(data=c(2, 3, 1, 0, -1, 4, 6, -2, 1, 0, -2, 3), 3,  4)
     [,1] [,2] [,3] [,4]
[1,]    2    0    6    0
[2,]    3   -1   -2   -2
[3,]    1    4    1    3
> matrix(data=c(2, 3, 1, 0, -1, 4, 6, -2, 1, 0, -2, 3), 3,  3)
     [,1] [,2] [,3]
[1,]    2    0    6
[2,]    3   -1   -2
[3,]    1    4    1
> matrix(data=c(2, 3, 1, 0, -1, 4, 6, -2, 1, 0, -2, 3), 3,  8)
     [,1] [,2] [,3] [,4] [,5] [,6]
[1,]    2    0    6    0    2    0
[2,]    3   -1   -2   -2    3   -1
[3,]    1    4    1    3    1    4
     [,7] [,8]
[1,]    6    0
[2,]   -2   -2
[3,]    1    3
> mesure<-c(23.4, 24.4, 24.6, 24.9, 25, 26.2, 18.9, 21.1, 21.1, 22.1, 22.5, 23.5, 24.5, 22.5, 22.9, 23.7, 24.0, 24)
> length(mesure)
[1] 18
> # calculons la moyenne de y
> mean(mesure)
[1] 23.29444
> sum(mesure)/18
[1] 23.29444
> is.character(mesure)
[1] FALSE
> is.numeric(mesure)
[1] TRUE
> population<-c(1,1,1,1,1,1,2,2,2,2,2,2,2,3,3,3,3,3)
> length(population)
[1] 18
> rep(5,10)
 [1] 5 5 5 5 5 5 5 5 5 5
> rep(5,20)
 [1] 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5
[18] 5 5 5
> rep(c(1,2,3,4,5), 20)
  [1] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2
 [18] 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4
 [35] 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1
 [52] 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3
 [69] 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
 [86] 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5
> b<-1:50
> b
 [1]  1  2  3  4  5  6  7  8  9 10 11
[12] 12 13 14 15 16 17 18 19 20 21 22
[23] 23 24 25 26 27 28 29 30 31 32 33
[34] 34 35 36 37 38 39 40 41 42 43 44
[45] 45 46 47 48 49 50
> # aov: analyze of variance
> aov(mesure~population)
Call:
   aov(formula = mesure ~ population)

Terms:
                population Residuals
Sum of Squares     6.00305  45.30640
Deg. of Freedom          1        16

Residual standard error: 1.682751
Estimated effects may be unbalanced
> tab<-aov(mesure~population)
> summary(tab)
            Df Sum Sq Mean Sq F value
population   1   6.00   6.003    2.12
Residuals   16  45.31   2.832        
            Pr(>F)
population   0.165
Residuals         
> mesure
 [1] 23.4 24.4 24.6 24.9 25.0 26.2 18.9
 [8] 21.1 21.1 22.1 22.5 23.5 24.5 22.5
[15] 22.9 23.7 24.0 24.0
> VT<-sum((mesure-mean(mesure))^2)
> VT
[1] 51.30944
> B<-6*(24.75-mean(mesure))^2+7*(21.95-mean(mesure))^2+5*(23.42-mean(mesure))^2
> B
[1] 25.44339
> B<-6*(24.75-mean(mesure))^2+7*(21.95-mean(mesure))^2+5*(23.42-mean(mesure))^2
> Wx<-VT-B
> W
[1] 25.86606
> population
 [1] 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3
[18] 3
> is.numeric(population)
[1] TRUE
> as.factor(population)
 [1] 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3
[18] 3
Levels: 1 2 3
> aov(mesure~population)
Call:
   aov(formula = mesure ~ population)

Terms:
                population Residuals
Sum of Squares     6.00305  45.30640
Deg. of Freedom          1        16

Residual standard error: 1.682751
Estimated effects may be unbalanced
> length(population)
[1] 18
> population
 [1] 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3
[18] 3
> as.factor(population)
 [1] 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3
[18] 3
Levels: 1 2 3
> aov(mesure~population)
Call:
   aov(formula = mesure ~ population)

Terms:
                population Residuals
Sum of Squares     6.00305  45.30640
Deg. of Freedom          1        16

Residual standard error: 1.682751
Estimated effects may be unbalanced
> aov(population~mesure)
Call:
   aov(formula = population ~ mesure)

Terms:
                  mesure Residuals
Sum of Squares  1.280467  9.663978
Deg. of Freedom        1        16

Residual standard error: 0.7771735
Estimated effects may be unbalanced
> population
 [1] 1 1 1 1 1 1 2 2 2 2 2 2 2 3 3 3 3
[18] 3
> aov(mesure~population)
Call:
   aov(formula = mesure ~ population)

Terms:
                population Residuals
Sum of Squares     6.00305  45.30640
Deg. of Freedom          1        16

Residual standard error: 1.682751
Estimated effects may be unbalanced
> library(stats)
> pop<-as.factor(population)
> aov(mesure~pop)
Call:
   aov(formula = mesure ~ pop)

Terms:
                     pop Residuals
Sum of Squares  25.30930  26.00014
Deg. of Freedom        2        15

Residual standard error: 1.316565
Estimated effects may be unbalanced
> summary(aov(mesure~pop))
            Df Sum Sq Mean Sq F value
pop          2  25.31  12.655   7.301
Residuals   15  26.00   1.733        
             Pr(>F)   
pop         0.00611 **
Residuals             
---
Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05
  ‘.’ 0.1 ‘ ’ 1
> mesure1<-c(120,118,122,110,130,122,120,132,124,112,116,108,116,116,124,122,114,122,122,130)
> mesure1
 [1] 120 118 122 110 130 122 120 132
 [9] 124 112 116 108 116 116 124 122
[17] 114 122 122 130
> length(mesure1)
[1] 20
> presentation<-c(rep(1,5),rep(2,5), rep(3,5), rep(4,5))
> presentation
 [1] 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4
[18] 4 4 4
> presentation<-as.factor(presentation)
> aov2<-aov(mesure1~presentation)
> aov2
Call:
   aov(formula = mesure1 ~ presentation)

Terms:
                presentation Residuals
Sum of Squares           120       672
Deg. of Freedom            3        16

Residual standard error: 6.480741
Estimated effects may be unbalanced
> summary(aov2)
             Df Sum Sq Mean Sq F value
presentation  3    120      40   0.952
Residuals    16    672      42        
             Pr(>F)
presentation  0.439
Residuals          
> ## le p_value = 0.439 > 0.05, par conséquent on accepte l'hypothèse H0, les groupes sont kif kif, les quatre moyennes sont égales au seuil de 5%, les deux variables sont indépendantes, ou bien la variable qualitative n'affecte pas la variable quantitative