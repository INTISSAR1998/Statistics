> y=c(37.8,22.5,17.1,10.8,7.2,42.3,30.2,19.4,14.8,9.5,32.4,21.6)
> x1=c(4,4,3,2,1,6,4,4,1,1,3,4)
> x2=c(4,3.6,3.1,3.2,3,3.8,3.8,2.9,3.8,2.8,3.4,2.8)
> y
 [1] 37.8 22.5 17.1 10.8  7.2 42.3 30.2 19.4 14.8  9.5 32.4 21.6
> x1
 [1] 4 4 3 2 1 6 4 4 1 1 3 4
> x2
 [1] 4.0 3.6 3.1 3.2 3.0 3.8 3.8 2.9 3.8 2.8 3.4 2.8
> length(y)
[1] 12
> length(x1)
[1] 12
> length(x2)
[1] 12
> reg<-lm(y~x1+x2)
> reg

Call:
lm(formula = y ~ x1 + x2)

Coefficients:
(Intercept)           x1           x2  
    -30.081        4.905       11.072  

> # valeur des coefficients: B0 = -30.081    B1= 4.905   B2= 11.072
> # Equation du modèle: y^ = -30.081  + 4.905 x1  + 11.072 x2
> # calculer la variance totale
> VT<-sum((y-mean(y))^2)
> VT
[1] 1420.667
> # y ajustée estimée fitted values
> y_ajus<--30.081 + 4.905*x1 +11.072*x2
> y_ajus
 [1] 33.8270 29.3982 18.9572 15.1594  8.0400 41.4226 31.6126 21.6478 16.8976  5.8256 22.2788 20.5406
> # calculons le résidu = y -y ajustée
> residu<-y-y_ajus
> residu
 [1]  3.9730 -6.8982 -1.8572 -4.3594 -0.8400  0.8774 -1.4126 -2.2478 -2.0976  3.6744 10.1212  1.0594
> sum(residu)    
[1] -0.0074
> #variance residuelle= somme des carrés des residus= SCR= somme des residus au carré
> VR<-sum((y-y_ajus)^2)
> VR
[1] 215.8091
> # variance expliquee VE
> VE<-VT-VR
> VE
[1] 1204.858
> #vérifions cette valeur
> VE<-sum((y_ajus-mean(y))^2)
> VE
[1] 1204.947
> # Tableau d'analyse de la variance
> # VE 1204.858  DF:2
> # VR 215.8091   DF:9
> F_obs<- (VE/2)/((VR/9))
> F_obs
[1] 25.12527
> # valeur critique de fisher avec v1 = 2  v2 =9   et alpha= 5%
> qf(0.05, 2,9)
[1] 0.05158674
> qf(0.95, 2, 9)
[1] 4.256495
> # 25.12527<4.256495: F obs< Fc donc on refuse H0
> #modèle globalement significatif
> # chercher tous ces resultats en utilisant un code automatique sous R
> summary(reg)

Call:
lm(formula = y ~ x1 + x2)

Residuals:
   Min     1Q Median     3Q    Max 
-6.897 -2.135 -1.126  1.714 10.122 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  -30.081     11.455  -2.626 0.027542 *  
x1             4.905      1.014   4.838 0.000923 ***
x2            11.072      3.621   3.058 0.013617 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 4.897 on 9 degrees of freedom
Multiple R-squared:  0.8481,	Adjusted R-squared:  0.8143 
F-statistic: 25.12 on 2 and 9 DF,  p-value: 0.0002075

> R2<-VE/VT
> R2
[1] 0.8481559
> #R2 est proche de 1 cela veut dire que la régression par un modèle linaire est acceptable
> # Test de student test de significativité par variable
> # calculons le t de student critique de la table de student
> qt(0.975, 9)
[1] 2.262157
> # pour chaque coefficient il faut comparer le t de student observe avec le t critique calculé a partir de la table de student
> # le t de student obs value est superieur a t critique calcule a partir de R, donc toutes les variables du modele sont significatives y compris la constante