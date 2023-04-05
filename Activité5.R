> qf(0.95, 2, 9)
[1] 4.256495
> qt(0.975, 9)
[1] 2.262157
> -30.081+ 4.905*4 + 11.072*3.8
[1] 31.6126
> Y=c(37.8,22.5,17.1,10.8,7.2,42.3,30.2,19.4,14.8,9.5,32.4,21.6)
> x1=c(4,4,3,2,1,6,4,4,1,1,3,4)
> x2=c(4,3.6,3.1,3.2,3,3.8,3.8,2.9,3.8,2.8,3.4,2.8)
> length(Y)
[1] 12
> Y=c(81,55,80,24,78,52,88,45,50,69,45,24,43,38,72,41,38,52,52,66,89)
> length(Y)
[1] 21
> > x1=c(124,49,181,4,22,152,75,54,43,41,22,16,10,63,170,125,12,221,171,97,254)
Error: unexpected '>' in ">"
>  x2=c(33,31,38,17,20,39,30,29,35,31,21,8,23,37,40,38,25,39,33,38,39)
> 
>  x3=c(8,6,8,2,4,6,7,7,6,5,3,3,3,6,8,6,4,7,7,6,8)
> Y
 [1] 81 55 80 24 78 52 88 45 50 69 45 24 43 38 72 41 38 52 52 66 89
> x1
 [1] 4 4 3 2 1 6 4 4 1 1 3 4
> length(x1)
[1] 12
> x1=c(124,49,181,4,22,152,75,54,43,41,22,16,10,63,170,125,12,221,171,97,254)
> x1
 [1] 124  49 181   4  22 152  75  54  43  41  22  16  10  63 170 125  12 221 171  97 254
> length(x1)
[1] 21
> reg1<-lm(Y~x1)
> summary(reg1)

Call:
lm(formula = Y ~ x1)

Residuals:
    Min      1Q  Median      3Q     Max 
-22.461 -14.637  -2.249  11.262  33.786 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  44.3580     6.0158   7.374  5.5e-07 ***
x1            0.1314     0.0514   2.557   0.0193 *  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 17.41 on 19 degrees of freedom
Multiple R-squared:  0.256,	Adjusted R-squared:  0.2168 
F-statistic: 6.538 on 1 and 19 DF,  p-value: 0.01927

> # 1ere méthode calculon F critique
> qf(0.95,1,19)
[1] 4.38075
> # 6.538 > 4.38075  on refuse H0 modèle globalement significatif
> # 2 eme méthode en utilisant le p value
> # p value 0.01927 < 0.05 on refuse H0
> # question 1 achevée
> ##########################"########
> reg2<-lm(Y~x1+x2)
> summary(reg2)

Call:
lm(formula = Y ~ x1 + x2)

Residuals:
    Min      1Q  Median      3Q     Max 
-21.997 -13.869  -2.328  12.094  33.433 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)  
(Intercept) 32.81743   16.67285   1.968   0.0646 .
x1           0.08767    0.07853   1.116   0.2790  
x2           0.50580    0.68029   0.744   0.4668  
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 17.62 on 18 degrees of freedom
Multiple R-squared:  0.2782,	Adjusted R-squared:  0.198 
F-statistic: 3.468 on 2 and 18 DF,  p-value: 0.0532

> # equation du modele y^ = 32.81743 + 0.08767 *X1 + 0.50580* X2
> y_ajustee<- 32.81743 + 0.08767*x1 +0.50580*x2
> #" question 3 test de Fisher
> # calculons la variance totale
> VT<-sum(Y^2)- length(Y)*mean(Y)^2
> VT
[1] 7738.286
> VT<-sum((Y-mean(Y))^2)
> VT
[1] 7738.286
> VR<-sum(reg2$residuals^2)
> VR
[1] 5585.686
> # variance expliquee VT-VR
> VE<-VT-VR
> VE
[1] 2152.6
> F_obs<-(VE/2)/(VR/18)
> F_obs
[1] 3.4684
> F_critique<-qf(0.95,2,18)
> F_critique
[1] 3.554557
> F_obs<F_critique
[1] TRUE
> # on accepte H0: modèle non significatif: beta1 = beta2 = 0
> # question 4     beta2 = 0.50580    ecart type2 = 0.68029
> t_obs<-0.50580/0.68029
> t_obs
[1] 0.7435064
> t_critique<-qt(0.975, 18)
> t_critique
[1] 2.100922
> t_obs<t_critique
[1] TRUE
> # on accepte H0: beta2 = 0 par consequent X2 n'est pas significative, le fait de rentrer x2 dans le modèle simple était un mauvais choix puisque le modèle est devenu non significatif
> reg3<-lm(Y~x1+x2+x3)
> summary(reg3)

Call:
lm(formula = Y ~ x1 + x2 + x3)

Residuals:
    Min      1Q  Median      3Q     Max 
-23.064 -11.766  -3.035   7.789  31.716 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)  
(Intercept) 20.941222  15.898885   1.317    0.205  
x1           0.001676   0.080195   0.021    0.984  
x2          -0.457739   0.744739  -0.615    0.547  
x3           8.615204   3.784127   2.277    0.036 *
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 15.87 on 17 degrees of freedom
Multiple R-squared:  0.4468,	Adjusted R-squared:  0.3492 
F-statistic: 4.577 on 3 and 17 DF,  p-value: 0.01589

> y_ajuste<-20.941222 + 0.001676*x1 -0.457739*x2 + 8.165204 *x3
> # amélioration modeste, en effet le pvalue de fisher 0.01589 est < légèrement à 0.05, modèle globalement sig mais faiblement, en effet par le test de student on s'aperçoit qu'uniquement x3 est sig avec un pvalue 0.036 < de justesse à 0.05
> x4<-x2+x3
> reg4<-lm(Y~x1+x4)
> summary(reg4)

Call:
lm(formula = Y ~ x1 + x4)

Residuals:
    Min      1Q  Median      3Q     Max 
-22.273 -11.772  -1.543  11.830  33.924 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)
(Intercept) 27.65641   17.05348   1.622    0.122
x1           0.06514    0.08150   0.799    0.435
x4           0.62443    0.59681   1.046    0.309

Residual standard error: 17.36 on 18 degrees of freedom
Multiple R-squared:  0.2987,	Adjusted R-squared:  0.2207 
F-statistic: 3.833 on 2 and 18 DF,  p-value: 0.04105

> lm(Y~x3)

Call:
lm(formula = Y ~ x3)

Coefficients:
(Intercept)           x3  
     16.797        6.911  

> summary(lm(Y~x3))

Call:
lm(formula = Y ~ x3)

Residuals:
    Min      1Q  Median      3Q     Max 
-20.260 -13.171  -3.260   7.919  33.561 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept)   16.797     10.868   1.545  0.13873   
x3             6.911      1.811   3.815  0.00117 **
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 15.19 on 19 degrees of freedom
Multiple R-squared:  0.4338,	Adjusted R-squared:  0.404 
F-statistic: 14.55 on 1 and 19 DF,  p-value: 0.001169

> x5<-x2*x3
> summary(lm(Y~x1+x5))

Call:
lm(formula = Y ~ x1 + x5)

Residuals:
    Min      1Q  Median      3Q     Max 
-22.967 -11.053  -1.293   8.972  35.568 

Coefficients:
             Estimate Std. Error t value Pr(>|t|)   
(Intercept) 31.982129   9.312868   3.434  0.00296 **
x1          -0.006811   0.095460  -0.071  0.94391   
x5           0.132495   0.078490   1.688  0.10865   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 16.62 on 18 degrees of freedom
Multiple R-squared:  0.3577,	Adjusted R-squared:  0.2863 
F-statistic: 5.012 on 2 and 18 DF,  p-value: 0.01861

> summary(lm(x1~x2+x3))

Call:
lm(formula = x1 ~ x2 + x3)

Residuals:
    Min      1Q  Median      3Q     Max 
-65.226 -34.742  -0.774  30.839  91.066 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept) -114.889     38.083  -3.017  0.00741 **
x2             2.565      2.104   1.219  0.23854   
x3            22.225      9.811   2.265  0.03607 * 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 46.64 on 18 degrees of freedom
Multiple R-squared:  0.6587,	Adjusted R-squared:  0.6207 
F-statistic: 17.37 on 2 and 18 DF,  p-value: 6.289e-05

> # x1 = -114.889 + 22.225 *x3 +   ....x2
> # l'une des hypothèses de la MCO n'est pas vérifiée à savoir l'absence de multicolinéarité entre les xi
> lm(x1~x3)

Call:
lm(formula = x1 ~ x3)

Coefficients:
(Intercept)           x3  
     -92.54        32.08  

> summary(lm(x1~x3))

Call:
lm(formula = x1 ~ x3)

Residuals:
    Min      1Q  Median      3Q     Max 
-78.004 -36.927   5.919  25.073  89.919 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept)  -92.537     33.803  -2.738   0.0131 *  
x3            32.077      5.634   5.694 1.73e-05 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 47.23 on 19 degrees of freedom
Multiple R-squared:  0.6305,	Adjusted R-squared:  0.611 
F-statistic: 32.42 on 1 and 19 DF,  p-value: 1.73e-05