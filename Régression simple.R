> act<-c(21,24,26,27,29,25,25,30)
> gpa<-c(2.8,3.4,3.0,3.5,3.6,3.0,2.7,3.7)
> length(act)
[1] 8
> length(gpa)
[1] 8
> b1<-cov(act,gpa)/var(act)
> ## b1_chapeau = cov(x,y)var(x)
> b1
[1] 0.1021978
> lm(gpa~act)

Call:
lm(formula = gpa ~ act)

Coefficients:
(Intercept)          act  
     0.5681       0.1022  

> b1<-(sum(act*gpa)-8*mean(act)*mean(gpa))/(sum(act^2)-8*(mean(act))^2)
> b1
[1] 0.1021978
> b0<-mean(gpa)-b1*mean(act)
> b0
[1] 0.5681319
> ## gpa_chapeau = 0.5681319 + 0.1021978*act
> #•# b1 = 0.1021978 positif par conséquent la relation est positive (croissante)
> gpa_chapeau<-0.5681319+0.1021978*act
> gpa_chapeau
[1] 2.714286 3.020879 3.225275 3.327473 3.531868 3.123077 3.123077
[8] 3.634066
> residu<-gpa-gpa_chapeau
> residu
[1]  0.0857143  0.3791209 -0.2252747  0.1725275  0.0681319
[6] -0.1230769 -0.4230769  0.0659341
> sum(residu)
[1] 2e-07
> ## question3
> y<-0.56813+0.1021978*20
> y
[1] 2.612086
> ## TD2 - Régression simple Problème1
> VT<-sum((gpa-mean(gpa))^2)
> VT
[1] 1.02875
> ## R^2 = VE/VT  = 1 - VR/VT   car VT =VE+VR,  avec VR = somme des résidus^2
> VR<-sum(residu^2)
> VR
[1] 0.4347253
> VE<-VT-VR
> coef_determination<-VE/VT
> coef_determination
[1] 0.5774238
> ## ajustement linéaire moyen 
> ## calculons le coefficient de correlation d epearson
> r<-coef_determination^0.5
> r
[1] 0.7598841
> ## TD2 - Régression simple Problème2
> #####
> # 1) première question 1:
> bwght0<-119.77-0.514*0
> bwght0
[1] 119.77
> bwght20<-119.77-0.514*20
> bwght20
[1] 109.49
> bwght20-bwght0
[1] -10.28
> #♦# -10.28: diminution du poids du bébé suite à un nombre de cigarettes fumées par jour égal à 20 (paquet)
> # # il y a d'autres variables qui peuvent expliquer le poids du bébé notamment la nutrition, l'activité physique, l'état psychologique, la consommation d'alcool,l'arbre génétique de la famille,......
> ## 3)
> cigs<-(119.77-125)/0.514
> cigs
[1] -10.1751
> ## -10.1751 cigarettes !!!!!!!!!!!!!
> ## valeur aberante
> # d'où la faiblesse du modèle
> ## TD2 - Régression simple Problème3
> p<-c(15, 8, 36, 41, 16, 8, 21, 21, 53, 10, 32, 17, 58, 6, 20)
> p
 [1] 15  8 36 41 16  8 21 21 53 10 32 17 58  6
[15] 20
> c<-c(48, 43, 77, 89, 50, 40 ,56, 62, 100,     47, 71, 58 ,102, 35 ,60)
> length(p)
[1] 15
> length(c)
[1] 15
> ## 2eme question
> reg<-lm(c~p)
> reg

Call:
lm(formula = c ~ p)

Coefficients:
(Intercept)            p  
     31.674        1.279  

> reg

Call:
lm(formula = c ~ p)

Coefficients:
(Intercept)            p  
     31.674        1.279  

> # c_chapeau = 31.674 + 1.279 * p
> ## equation du modèle: équation de la droite de régression
> ## 3 eme question:
> ## coef de corrélation de pearson:
> cor(c,p, method="pearson")
[1] 0.9894161
> plot(p,c)
> abline(reg)
> residu<-reg$residuals
> sum(residu)
[1] -5.551115e-16
> #" residu = y - y_chapeau
> ## question 4
> ####*******
> VT<-sum((c-mean(c))^2)
> VT
[1] 6269.733
> VR<-sum(residu^2)
> VR
[1] 132.0144
> VE<-VT-VR
> VE
[1] 6137.719
> # coef de determination R^2
> coef_determination<-VE/VT
> coef_determination
[1] 0.9789442
> 0.9894161^2
[1] 0.9789442
> summary(reg)

Call:
lm(formula = c ~ p)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.3461 -2.3299 -0.7073  2.6455  4.8991 

Coefficients:
            Estimate Std. Error t value
(Intercept) 31.67382    1.50087   21.10
p            1.27871    0.05201   24.59
            Pr(>|t|)    
(Intercept) 1.93e-11 ***
p           2.77e-12 ***
---
Signif. codes:  
0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.187 on 13 degrees of freedom
Multiple R-squared:  0.9789,	Adjusted R-squared:  0.9773 
F-statistic: 604.4 on 1 and 13 DF,  p-value: 2.77e-12

> ## est ce que le modèle est globalement significatif ?
> ## oui car p value = 0.000000277 < 0.05  alors on refuse l'hypothèse H0 on refuse l'hypothèse de la nullité des coefficients et donc tous les coef sont différents de zéro
> ## F obs =  604.4 à comparer avec la F critique (tabulée)
> F_critique<-4.67
> F_obs<-604.4
> F_obs> F_critique
[1] TRUE
> ## refuser Ho