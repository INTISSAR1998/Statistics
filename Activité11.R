> pub<-1:5
> pub
[1] 1 2 3 4 5
> vente<-c(1,1,2,2,4)
> vente
[1] 1 1 2 2 4
> lm(vente~pub)

Call:
lm(formula = vente ~ pub)

Coefficients:
(Intercept)          pub  
       -0.1          0.7  

> # # y (vente) (estimée) = -0.1 + 0.7 pub
> cov(vente, pub)/var(pub)
[1] 0.7
> mean(vente)-0.7*mean(pub)
[1] -0.1
> vente_estimee<--0.1+ 0.7*pub
> vente_estimee
[1] 0.6 1.3 2.0 2.7 3.4
> reg1<-lm(vente~pub)
> reg1$fitted.values
  1   2   3   4   5 
0.6 1.3 2.0 2.7 3.4 
> residu<-vente-vente_estimee
> residu
[1]  4.000000e-01 -3.000000e-01
[3]  4.440892e-16 -7.000000e-01
[5]  6.000000e-01
> reg1$residuals
            1             2             3 
 4.000000e-01 -3.000000e-01 -3.885781e-16 
            4             5 
-7.000000e-01  6.000000e-01 
> ## on va calculer la variance totale de y (vente)
> VT<-sum((vente-mean(vente))^2)
> VT
[1] 6
> VR<-sum(residu^2)
> VR
[1] 1.1
> ## variance expliquée = variance totale variance résiduelle
> VE<-VT-VR
> VE
[1] 4.9
> # on va calcuer le coefficient de determination r^2
> r_deux<-VE/VT
> r_deux
[1] 0.8166667
> summary(reg1)

Call:
lm(formula = vente ~ pub)

Residuals:
         1          2          3          4 
 4.000e-01 -3.000e-01 -3.886e-16 -7.000e-01 
         5 
 6.000e-01 

Coefficients:
            Estimate Std. Error t value
(Intercept)  -0.1000     0.6351  -0.157
pub           0.7000     0.1915   3.656
            Pr(>|t|)  
(Intercept)   0.8849  
pub           0.0354 *
---
Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’
  0.1 ‘ ’ 1

Residual standard error: 0.6055 on 3 degrees of freedom
Multiple R-squared:  0.8167,	Adjusted R-squared:  0.7556 
F-statistic: 13.36 on 1 and 3 DF,  p-value: 0.03535

> # r_deux proche de 1 donc modèle acceptable apriori
> # on admet que r_deux est le caré du coefficient de correlation de pearson
> # corf de correlation de pearson
> r<-cor(vente,pub,method = "pearson")
> r
[1] 0.9036961
> r^2
[1] 0.8166667
> ## calculons la valeur de fisher observee
> F_obs<-(VE/1)/((VR/(length(vente)-2)))
> F_obs
[1] 13.36364
> # vérifions F_obs automatiquement:
> summary(reg1)

Call:
lm(formula = vente ~ pub)

Residuals:
         1          2          3          4 
 4.000e-01 -3.000e-01 -3.886e-16 -7.000e-01 
         5 
 6.000e-01 

Coefficients:
            Estimate Std. Error t value
(Intercept)  -0.1000     0.6351  -0.157
pub           0.7000     0.1915   3.656
            Pr(>|t|)  
(Intercept)   0.8849  
pub           0.0354 *
---
Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’
  0.1 ‘ ’ 1

Residual standard error: 0.6055 on 3 degrees of freedom
Multiple R-squared:  0.8167,	Adjusted R-squared:  0.7556 
F-statistic: 13.36 on 1 and 3 DF,  p-value: 0.03535

> F_critique<-10.13
> F_obs>F_critique
[1] TRUE
> ## refuser H0: modèle globalement significatif
> ## p-value: 0.03535 < 0.05 on refuse alors H0 le modèle globalement significatif
> summary(reg1)

Call:
lm(formula = vente ~ pub)

Residuals:
         1          2          3          4 
 4.000e-01 -3.000e-01 -3.886e-16 -7.000e-01 
         5 
 6.000e-01 

Coefficients:
            Estimate Std. Error t value
(Intercept)  -0.1000     0.6351  -0.157
pub           0.7000     0.1915   3.656
            Pr(>|t|)  
(Intercept)   0.8849  
pub           0.0354 *
---
Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’
  0.1 ‘ ’ 1

Residual standard error: 0.6055 on 3 degrees of freedom
Multiple R-squared:  0.8167,	Adjusted R-squared:  0.7556 
F-statistic: 13.36 on 1 and 3 DF,  p-value: 0.03535

> data(mtcars)
> mtcars
                     mpg cyl  disp  hp drat
Mazda RX4           21.0   6 160.0 110 3.90
Mazda RX4 Wag       21.0   6 160.0 110 3.90
Datsun 710          22.8   4 108.0  93 3.85
Hornet 4 Drive      21.4   6 258.0 110 3.08
Hornet Sportabout   18.7   8 360.0 175 3.15
Valiant             18.1   6 225.0 105 2.76
Duster 360          14.3   8 360.0 245 3.21
Merc 240D           24.4   4 146.7  62 3.69
Merc 230            22.8   4 140.8  95 3.92
Merc 280            19.2   6 167.6 123 3.92
Merc 280C           17.8   6 167.6 123 3.92
Merc 450SE          16.4   8 275.8 180 3.07
Merc 450SL          17.3   8 275.8 180 3.07
Merc 450SLC         15.2   8 275.8 180 3.07
Cadillac Fleetwood  10.4   8 472.0 205 2.93
Lincoln Continental 10.4   8 460.0 215 3.00
Chrysler Imperial   14.7   8 440.0 230 3.23
Fiat 128            32.4   4  78.7  66 4.08
Honda Civic         30.4   4  75.7  52 4.93
Toyota Corolla      33.9   4  71.1  65 4.22
Toyota Corona       21.5   4 120.1  97 3.70
Dodge Challenger    15.5   8 318.0 150 2.76
AMC Javelin         15.2   8 304.0 150 3.15
Camaro Z28          13.3   8 350.0 245 3.73
Pontiac Firebird    19.2   8 400.0 175 3.08
Fiat X1-9           27.3   4  79.0  66 4.08
Porsche 914-2       26.0   4 120.3  91 4.43
Lotus Europa        30.4   4  95.1 113 3.77
Ford Pantera L      15.8   8 351.0 264 4.22
Ferrari Dino        19.7   6 145.0 175 3.62
Maserati Bora       15.0   8 301.0 335 3.54
Volvo 142E          21.4   4 121.0 109 4.11
                       wt  qsec vs am gear carb
Mazda RX4           2.620 16.46  0  1    4    4
Mazda RX4 Wag       2.875 17.02  0  1    4    4
Datsun 710          2.320 18.61  1  1    4    1
Hornet 4 Drive      3.215 19.44  1  0    3    1
Hornet Sportabout   3.440 17.02  0  0    3    2
Valiant             3.460 20.22  1  0    3    1
Duster 360          3.570 15.84  0  0    3    4
Merc 240D           3.190 20.00  1  0    4    2
Merc 230            3.150 22.90  1  0    4    2
Merc 280            3.440 18.30  1  0    4    4
Merc 280C           3.440 18.90  1  0    4    4
Merc 450SE          4.070 17.40  0  0    3    3
Merc 450SL          3.730 17.60  0  0    3    3
Merc 450SLC         3.780 18.00  0  0    3    3
Cadillac Fleetwood  5.250 17.98  0  0    3    4
Lincoln Continental 5.424 17.82  0  0    3    4
Chrysler Imperial   5.345 17.42  0  0    3    4
Fiat 128            2.200 19.47  1  1    4    1
Honda Civic         1.615 18.52  1  1    4    2
Toyota Corolla      1.835 19.90  1  1    4    1
Toyota Corona       2.465 20.01  1  0    3    1
Dodge Challenger    3.520 16.87  0  0    3    2
AMC Javelin         3.435 17.30  0  0    3    2
Camaro Z28          3.840 15.41  0  0    3    4
Pontiac Firebird    3.845 17.05  0  0    3    2
Fiat X1-9           1.935 18.90  1  1    4    1
Porsche 914-2       2.140 16.70  0  1    5    2
Lotus Europa        1.513 16.90  1  1    5    2
Ford Pantera L      3.170 14.50  0  1    5    4
Ferrari Dino        2.770 15.50  0  1    5    6
Maserati Bora       3.570 14.60  0  1    5    8
Volvo 142E          2.780 18.60  1  1    4    2
> str(mtcars)
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
> summary(mtcars)
      mpg             cyl       
 Min.   :10.40   Min.   :4.000  
 1st Qu.:15.43   1st Qu.:4.000  
 Median :19.20   Median :6.000  
 Mean   :20.09   Mean   :6.188  
 3rd Qu.:22.80   3rd Qu.:8.000  
 Max.   :33.90   Max.   :8.000  
      disp             hp       
 Min.   : 71.1   Min.   : 52.0  
 1st Qu.:120.8   1st Qu.: 96.5  
 Median :196.3   Median :123.0  
 Mean   :230.7   Mean   :146.7  
 3rd Qu.:326.0   3rd Qu.:180.0  
 Max.   :472.0   Max.   :335.0  
      drat             wt       
 Min.   :2.760   Min.   :1.513  
 1st Qu.:3.080   1st Qu.:2.581  
 Median :3.695   Median :3.325  
 Mean   :3.597   Mean   :3.217  
 3rd Qu.:3.920   3rd Qu.:3.610  
 Max.   :4.930   Max.   :5.424  
      qsec             vs        
 Min.   :14.50   Min.   :0.0000  
 1st Qu.:16.89   1st Qu.:0.0000  
 Median :17.71   Median :0.0000  
 Mean   :17.85   Mean   :0.4375  
 3rd Qu.:18.90   3rd Qu.:1.0000  
 Max.   :22.90   Max.   :1.0000  
       am              gear      
 Min.   :0.0000   Min.   :3.000  
 1st Qu.:0.0000   1st Qu.:3.000  
 Median :0.0000   Median :4.000  
 Mean   :0.4062   Mean   :3.688  
 3rd Qu.:1.0000   3rd Qu.:4.000  
 Max.   :1.0000   Max.   :5.000  
      carb      
 Min.   :1.000  
 1st Qu.:2.000  
 Median :2.000  
 Mean   :2.812  
 3rd Qu.:4.000  
 Max.   :8.000  
> reg2<-lm(mtcars$mpg~mtcars$disp)
> reg2

Call:
lm(formula = mtcars$mpg ~ mtcars$disp)

Coefficients:
(Intercept)  mtcars$disp  
   29.59985     -0.04122  

> ## mpg = 29.59985 -0.04122*disp
> cov(mtcars$mpg,mtcars$disp)/var(mtcars$disp)
[1] -0.04121512
> mean(mtcars$mpg)-(-0.04122)*mean(mtcars$disp)
[1] 29.60098
> y<-mtcars$mpg
> x<-mtcars$disp
> mean(y)-(-0.04122)*mean(x)
[1] 29.60098
> VT<-sum((y-mean(y))^2)
> VT
[1] 1126.047
> residu<-reg2$residuals
> residu^2
          1           2           3           4 
 4.02177179  4.02177179  5.51602436  5.92263380 
          5           6           7           8 
15.50460265  4.95709191  0.21382446  0.71639862 
          9          10          11          12 
 0.99354219 12.19546538 23.93362720  3.35887972 
         13          14          15          16 
 0.86997531  9.19741893  0.06435449  0.05803260 
         17          18          19          20 
10.46391828 36.52721849 15.36741785 52.28071264 
         21          22          23          24 
 9.92198875  0.98693616  3.49861421  3.51398558 
         25          26          27          28 
37.04174802  0.91420317  1.84504457 22.27559785 
         29          30          31          32 
 0.44442536 15.39512633  4.81409082 10.32224603 
> VR<-sum(residu^2)
> ## variance résiduelle = somme des carrés des résidus
> ## calculons la variance expliquée
> VE<-VT-VR
> VE
[1] 808.8885
> # coef.de détermination = VE/VT = 1 - (VR/VT)
> r_deux<-VE/VT
> r_deux
[1] 0.7183433
> summary(reg2)

Call:
lm(formula = mtcars$mpg ~ mtcars$disp)

Residuals:
    Min      1Q  Median      3Q     Max 
-4.8922 -2.2022 -0.9631  1.6272  7.2305 

Coefficients:
             Estimate Std. Error t value
(Intercept) 29.599855   1.229720  24.070
mtcars$disp -0.041215   0.004712  -8.747
            Pr(>|t|)    
(Intercept)  < 2e-16 ***
mtcars$disp 9.38e-10 ***
---
Signif. codes:  
0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.251 on 30 degrees of freedom
Multiple R-squared:  0.7183,	Adjusted R-squared:  0.709 
F-statistic: 76.51 on 1 and 30 DF,  p-value: 9.38e-10

> F_obs<-(VE/1)/((VR/(length(y)-2)))
> F_obs
[1] 76.51266
> F_critique<-4.17
> F_obs>F_critique
[1] TRUE
> ## p value = 9.38 *10^-10  largement < à 0.05 donc on refuse H0 le modèle est globalement significatif