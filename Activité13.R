> data(decathlon2)
> dec<-data(decathlon2)
> dec
[1] "decathlon2"
> decathlon2
            X100m Long.jump Shot.put High.jump X400m X110m.hurdle Discus Pole.vault Javeline
SEBRLE      11.04      7.58    14.83      2.07 49.81        14.69  43.75       5.02    63.19
CLAY        10.76      7.40    14.26      1.86 49.37        14.05  50.72       4.92    60.15
BERNARD     11.02      7.23    14.25      1.92 48.93        14.99  40.87       5.32    62.77
YURKOV      11.34      7.09    15.19      2.10 50.42        15.31  46.26       4.72    63.44
ZSIVOCZKY   11.13      7.30    13.48      2.01 48.62        14.17   45.67       4.42    55.37
McMULLEN    10.83      7.31    13.76      2.13 49.91        14.38  44.41       4.42    56.37
MARTINEAU   11.64      6.81    14.57      1.95 50.14        14.93  47.60       4.92    52.33
HERNU       11.37      7.56    14.41      1.86 51.10        15.06  44.99       4.82    57.19
BARRAS      11.33      6.97    14.09      1.95 49.48        14.48  42.10       4.72    55.40
NOOL        11.33      7.27    12.68      1.98 49.20        15.29  37.92       4.62    57.44
BOURGUIGNON 11.36      6.80    13.46      1.86 51.16        15.67  40.49       5.02    54.68
Sebrle      10.85      7.84    16.36      2.12 48.36        14.05  48.72       5.00    70.52
Clay        10.44      7.96    15.23      2.06 49.19        14.13  50.11       4.90    69.71
Karpov      10.50      7.81    15.93      2.09 46.81        13.97  51.65       4.60    55.54
Macey       10.89      7.47    15.73      2.15 48.97        14.56  48.34       4.40    58.46
Warners     10.62      7.74    14.48      1.97 47.97        14.01  43.73       4.90    55.39
Zsivoczky   10.91      7.14    15.31      2.12 49.40        14.95  45.62       4.70    63.45
Hernu       10.97      7.19    14.65      2.03 48.73        14.25  44.72       4.80    57.76
Bernard     10.69      7.48    14.80      2.12 49.13        14.17  44.75       4.40    55.27
Schwarzl    10.98      7.49    14.01      1.94 49.76        14.25  42.43       5.10    56.32
Pogorelov   10.95      7.31    15.10      2.06 50.79        14.21  44.60       5.00    53.45
Schoenbeck  10.90      7.30    14.77      1.88 50.30        14.34  44.41       5.00    60.89
Barras      11.14      6.99    14.91      1.94 49.41        14.37  44.83       4.60    64.55
KARPOV      11.02      7.30    14.77      2.04 48.37        14.09  48.95       4.92    50.31
WARNERS     11.11      7.60    14.31      1.98 48.68        14.23  41.10       4.92    51.77
Nool        10.80      7.53    14.26      1.88 48.81        14.80  42.05       5.40    61.33
Drews       10.87      7.38    13.07      1.88 48.51        14.01  40.11       5.00    51.53
            X1500m Rank Points Competition
SEBRLE      291.70    1   8217    Decastar
CLAY        301.50    2   8122    Decastar
BERNARD     280.10    4   8067    Decastar
YURKOV      276.40    5   8036    Decastar
ZSIVOCZKY   268.00    7   8004    Decastar
McMULLEN    285.10    8   7995    Decastar
MARTINEAU   262.10    9   7802    Decastar
HERNU       285.10   10   7733    Decastar
BARRAS      282.00   11   7708    Decastar
NOOL        266.60   12   7651    Decastar
BOURGUIGNON 291.70   13   7313    Decastar
Sebrle      280.01    1   8893    OlympicG
Clay        282.00    2   8820    OlympicG
Karpov      278.11    3   8725    OlympicG
Macey       265.42    4   8414    OlympicG
Warners     278.05    5   8343    OlympicG
Zsivoczky   269.54    6   8287    OlympicG
Hernu       264.35    7   8237    OlympicG
Bernard     276.31    9   8225    OlympicG
Schwarzl    273.56   10   8102    OlympicG
Pogorelov   287.63   11   8084    OlympicG
Schoenbeck  278.82   12   8077    OlympicG
Barras      267.09   13   8067    OlympicG
KARPOV      300.20    3   8099    Decastar
WARNERS     278.10    6   8030    Decastar
Nool        276.33    8   8235    OlympicG
Drews       274.21   19   7926    OlympicG
> dec<-decathlon2
> dec
            X100m Long.jump Shot.put High.jump X400m X110m.hurdle Discus Pole.vault Javeline
SEBRLE      11.04      7.58    14.83      2.07 49.81        14.69  43.75       5.02    63.19
CLAY        10.76      7.40    14.26      1.86 49.37        14.05  50.72       4.92    60.15
BERNARD     11.02      7.23    14.25      1.92 48.93        14.99  40.87       5.32    62.77
YURKOV      11.34      7.09    15.19      2.10 50.42        15.31  46.26       4.72    63.44
ZSIVOCZKY   11.13      7.30    13.48      2.01 48.62        14.17  45.67       4.42    55.37
McMULLEN    10.83      7.31    13.76      2.13 49.91        14.38  44.41       4.42    56.37
MARTINEAU   11.64      6.81    14.57      1.95 50.14        14.93  47.60       4.92    52.33
HERNU       11.37      7.56    14.41      1.86 51.10        15.06  44.99       4.82    57.19
BARRAS      11.33      6.97    14.09      1.95 49.48        14.48  42.10       4.72    55.40
NOOL        11.33      7.27    12.68      1.98 49.20        15.29  37.92       4.62    57.44
BOURGUIGNON 11.36      6.80    13.46      1.86 51.16        15.67  40.49       5.02    54.68
Sebrle      10.85      7.84    16.36      2.12 48.36        14.05  48.72       5.00    70.52
Clay        10.44      7.96    15.23      2.06 49.19        14.13  50.11       4.90    69.71
Karpov      10.50      7.81    15.93      2.09 46.81        13.97  51.65       4.60    55.54
Macey       10.89      7.47    15.73      2.15 48.97        14.56  48.34       4.40    58.46
Warners     10.62      7.74    14.48      1.97 47.97        14.01  43.73       4.90    55.39
Zsivoczky   10.91      7.14    15.31      2.12 49.40        14.95  45.62       4.70    63.45
Hernu       10.97      7.19    14.65      2.03 48.73        14.25  44.72       4.80    57.76
Bernard     10.69      7.48    14.80      2.12 49.13        14.17  44.75       4.40    55.27
Schwarzl    10.98      7.49    14.01      1.94 49.76        14.25  42.43       5.10    56.32
Pogorelov   10.95      7.31    15.10      2.06 50.79        14.21  44.60       5.00    53.45
Schoenbeck  10.90      7.30    14.77      1.88 50.30        14.34  44.41       5.00    60.89
Barras      11.14      6.99    14.91      1.94 49.41        14.37  44.83       4.60    64.55
KARPOV      11.02      7.30    14.77      2.04 48.37        14.09  48.95       4.92    50.31
WARNERS     11.11      7.60    14.31      1.98 48.68        14.23  41.10       4.92    51.77
Nool        10.80      7.53    14.26      1.88 48.81        14.80  42.05       5.40    61.33
Drews       10.87      7.38    13.07      1.88 48.51        14.01  40.11       5.00    51.53
            X1500m Rank Points Competition
SEBRLE      291.70    1   8217    Decastar
CLAY        301.50    2   8122    Decastar
BERNARD     280.10    4   8067    Decastar
YURKOV      276.40    5   8036    Decastar
ZSIVOCZKY   268.00    7   8004    Decastar
McMULLEN    285.10    8   7995    Decastar
MARTINEAU   262.10    9   7802    Decastar
HERNU       285.10   10   7733    Decastar
BARRAS      282.00   11   7708    Decastar
NOOL        266.60   12   7651    Decastar
BOURGUIGNON 291.70   13   7313    Decastar
Sebrle      280.01    1   8893    OlympicG
Clay        282.00    2   8820    OlympicG
Karpov      278.11    3   8725    OlympicG
Macey       265.42    4   8414    OlympicG
Warners     278.05    5   8343    OlympicG
Zsivoczky   269.54    6   8287    OlympicG
Hernu       264.35    7   8237    OlympicG
Bernard     276.31    9   8225    OlympicG
Schwarzl    273.56   10   8102    OlympicG
Pogorelov   287.63   11   8084    OlympicG
Schoenbeck  278.82   12   8077    OlympicG
Barras      267.09   13   8067    OlympicG
KARPOV      300.20    3   8099    Decastar
WARNERS     278.10    6   8030    Decastar
Nool        276.33    8   8235    OlympicG
Drews       274.21   19   7926    OlympicG
> dim(dec)
[1] 27 13
> str(dec)
'data.frame':	27 obs. of  13 variables:
 $ X100m       : num  11 10.8 11 11.3 11.1 ...
 $ Long.jump   : num  7.58 7.4 7.23 7.09 7.3 7.31 6.81 7.56 6.97 7.27 ...
 $ Shot.put    : num  14.8 14.3 14.2 15.2 13.5 ...
 $ High.jump   : num  2.07 1.86 1.92 2.1 2.01 2.13 1.95 1.86 1.95 1.98 ...
 $ X400m       : num  49.8 49.4 48.9 50.4 48.6 ...
 $ X110m.hurdle: num  14.7 14.1 15 15.3 14.2 ...
 $ Discus      : num  43.8 50.7 40.9 46.3 45.7 ...
 $ Pole.vault  : num  5.02 4.92 5.32 4.72 4.42 4.42 4.92 4.82 4.72 4.62 ...
 $ Javeline    : num  63.2 60.1 62.8 63.4 55.4 ...
 $ X1500m      : num  292 302 280 276 268 ...
 $ Rank        : int  1 2 4 5 7 8 9 10 11 12 ...
 $ Points      : int  8217 8122 8067 8036 8004 7995 7802 7733 7708 7651 ...
 $ Competition : Factor w/ 2 levels "Decastar","OlympicG": 1 1 1 1 1 1 1 1 1 1 ...
> # L'ACP se fait sur des variables quantitatives
> summary(dec)
     X100m         Long.jump        Shot.put       High.jump         X400m        X110m.hurdle  
 Min.   :10.44   Min.   :6.800   Min.   :12.68   Min.   :1.860   Min.   :46.81   Min.   :13.97  
 1st Qu.:10.84   1st Qu.:7.210   1st Qu.:14.17   1st Qu.:1.930   1st Qu.:48.70   1st Qu.:14.15  
 Median :10.97   Median :7.310   Median :14.57   Median :1.980   Median :49.20   Median :14.34  
 Mean   :10.99   Mean   :7.365   Mean   :14.54   Mean   :1.998   Mean   :49.31   Mean   :14.50  
 3rd Qu.:11.13   3rd Qu.:7.545   3rd Qu.:15.01   3rd Qu.:2.080   3rd Qu.:49.86   3rd Qu.:14.87  
 Max.   :11.64   Max.   :7.960   Max.   :16.36   Max.   :2.150   Max.   :51.16   Max.   :15.67  
     Discus        Pole.vault       Javeline         X1500m           Rank            Points    
 Min.   :37.92   Min.   :4.400   Min.   :50.31   Min.   :262.1   Min.   : 1.000   Min.   :7313  
 1st Qu.:42.27   1st Qu.:4.660   1st Qu.:55.32   1st Qu.:271.6   1st Qu.: 4.000   1st Qu.:8000  
 Median :44.72   Median :4.900   Median :57.19   Median :278.1   Median : 7.000   Median :8084  
 Mean   :44.85   Mean   :4.836   Mean   :58.32   Mean   :278.5   Mean   : 7.444   Mean   :8119  
 3rd Qu.:46.93   3rd Qu.:5.000   3rd Qu.:62.05   3rd Qu.:283.6   3rd Qu.:10.500   3rd Qu.:8236  
 Max.   :51.65   Max.   :5.400   Max.   :70.52   Max.   :301.5   Max.   :19.000   Max.   :8893  
   Competition
 Decastar:13  
 OlympicG:14  
              
              
              
              
> dec.active<-dec[1:23, 1:10]
> # Sélection des individus actifs et des variables actives objet d el'ACP
> dec.active
            X100m Long.jump Shot.put High.jump X400m X110m.hurdle Discus Pole.vault Javeline
SEBRLE      11.04      7.58    14.83      2.07 49.81        14.69  43.75       5.02    63.19
CLAY        10.76      7.40    14.26      1.86 49.37        14.05  50.72       4.92    60.15
BERNARD     11.02      7.23    14.25      1.92 48.93        14.99  40.87       5.32    62.77
YURKOV      11.34      7.09    15.19      2.10 50.42        15.31  46.26       4.72    63.44
ZSIVOCZKY   11.13      7.30    13.48      2.01 48.62        14.17  45.67       4.42    55.37
McMULLEN    10.83      7.31    13.76      2.13 49.91        14.38  44.41       4.42    56.37
MARTINEAU   11.64      6.81    14.57      1.95 50.14        14.93  47.60       4.92    52.33
HERNU       11.37      7.56    14.41      1.86 51.10        15.06  44.99       4.82    57.19
BARRAS      11.33      6.97    14.09      1.95 49.48        14.48  42.10       4.72    55.40
NOOL        11.33      7.27    12.68      1.98 49.20        15.29  37.92       4.62    57.44
BOURGUIGNON 11.36      6.80    13.46      1.86 51.16        15.67  40.49       5.02    54.68
Sebrle      10.85      7.84    16.36      2.12 48.36        14.05  48.72       5.00    70.52
Clay        10.44      7.96    15.23      2.06 49.19        14.13  50.11       4.90    69.71
Karpov      10.50      7.81    15.93      2.09 46.81        13.97  51.65       4.60    55.54
Macey       10.89      7.47    15.73      2.15 48.97        14.56  48.34       4.40    58.46
Warners     10.62      7.74    14.48      1.97 47.97        14.01  43.73       4.90    55.39
Zsivoczky   10.91      7.14    15.31      2.12 49.40        14.95  45.62       4.70    63.45
Hernu       10.97      7.19    14.65      2.03 48.73        14.25  44.72       4.80    57.76
Bernard     10.69      7.48    14.80      2.12 49.13        14.17  44.75       4.40    55.27
Schwarzl    10.98      7.49    14.01      1.94 49.76        14.25  42.43       5.10    56.32
Pogorelov   10.95      7.31    15.10      2.06 50.79        14.21  44.60       5.00    53.45
Schoenbeck  10.90      7.30    14.77      1.88 50.30        14.34  44.41       5.00    60.89
Barras      11.14      6.99    14.91      1.94 49.41        14.37  44.83       4.60    64.55
            X1500m
SEBRLE      291.70
CLAY        301.50
BERNARD     280.10
YURKOV      276.40
ZSIVOCZKY   268.00
McMULLEN    285.10
MARTINEAU   262.10
HERNU       285.10
BARRAS      282.00
NOOL        266.60
BOURGUIGNON 291.70
Sebrle      280.01
Clay        282.00
Karpov      278.11
Macey       265.42
Warners     278.05
Zsivoczky   269.54
Hernu       264.35
Bernard     276.31
Schwarzl    273.56
Pogorelov   287.63
Schoenbeck  278.82
Barras      267.09
> # Appliquer l'ACP à la base en question
> PCA(dec.active,scale.unit = T, ncp=5, graph=T, axes=c(1,2))
**Results for the Principal Component Analysis (PCA)**
The analysis was performed on 23 individuals, described by 10 variables
*The results are available in the following objects:

   name               description                          
1  "$eig"             "eigenvalues"                        
2  "$var"             "results for the variables"          
3  "$var$coord"       "coord. for the variables"           
4  "$var$cor"         "correlations variables - dimensions"
5  "$var$cos2"        "cos2 for the variables"             
6  "$var$contrib"     "contributions of the variables"     
7  "$ind"             "results for the individuals"        
8  "$ind$coord"       "coord. for the individuals"         
9  "$ind$cos2"        "cos2 for the individuals"           
10 "$ind$contrib"     "contributions of the individuals"   
11 "$call"            "summary statistics"                 
12 "$call$centre"     "mean of the variables"              
13 "$call$ecart.type" "standard error of the variables"    
14 "$call$row.w"      "weights for the individuals"        
15 "$call$col.w"      "weights for the variables"          
Warning message:
ggrepel: 22 unlabeled data points (too many overlaps). Consider increasing max.overlaps 
> acp1<-PCA(dec.active,scale.unit = T, ncp=5, graph=T, axes=c(1,2))
Warning message:
ggrepel: 2 unlabeled data points (too many overlaps). Consider increasing max.overlaps 
> acp1$eig
        eigenvalue percentage of variance
comp 1   4.1242133              41.242133
comp 2   1.8385309              18.385309
comp 3   1.2391403              12.391403
comp 4   0.8194402               8.194402
comp 5   0.7015528               7.015528
comp 6   0.4228828               4.228828
comp 7   0.3025817               3.025817
comp 8   0.2744700               2.744700
comp 9   0.1552169               1.552169
comp 10  0.1219710               1.219710
        cumulative percentage of variance
comp 1                           41.24213
comp 2                           59.62744
comp 3                           72.01885
comp 4                           80.21325
comp 5                           87.22878
comp 6                           91.45760
comp 7                           94.48342
comp 8                           97.22812
comp 9                           98.78029
comp 10                         100.00000
> fviz_eig(acp1)
> library(psych)

Attachement du package : ‘psych’

The following objects are masked from ‘package:ggplot2’:

    %+%, alpha

Warning message:
le package ‘psych’ a été compilé avec la version R 4.0.5 
> KMO(dec.active)
Kaiser-Meyer-Olkin factor adequacy
Call: KMO(r = dec.active)
Overall MSA =  0.68
MSA for each item = 
       X100m    Long.jump     Shot.put 
        0.77         0.88         0.60 
   High.jump        X400m X110m.hurdle 
        0.59         0.78         0.81 
      Discus   Pole.vault     Javeline 
        0.64         0.38         0.76 
      X1500m 
        0.40 
> # KMO = 0.68 entre 0.6 et 0.8 donc il est acceptable
> bartlett.test(dec.active)

	Bartlett test of homogeneity of variances

data:  dec.active
Bartlett's K-squared = 648.68, df = 9,
p-value < 2.2e-16

> var<-get_pca_var(acp1)
> var
Principal Component Analysis Results for variables
 ===================================================
  Name      
1 "$coord"  
2 "$cor"    
3 "$cos2"   
4 "$contrib"
  Description                                    
1 "Coordinates for the variables"                
2 "Correlations between variables and dimensions"
3 "Cos2 for the variables"                       
4 "contributions of the variables"               
> var$coord
                    Dim.1       Dim.2
X100m        -0.850625692 -0.17939806
Long.jump     0.794180641  0.28085695
Shot.put      0.733912733  0.08540412
High.jump     0.610083985 -0.46521415
X400m        -0.701603377  0.29017826
X110m.hurdle -0.764125197 -0.02474081
Discus        0.743209016  0.04966086
Pole.vault   -0.217268042  0.80745110
Javeline      0.428226639  0.38610928
X1500m        0.004278487  0.78448019
                   Dim.3       Dim.4      Dim.5
X100m         0.30155643  0.03357320 -0.1944440
Long.jump    -0.19054653 -0.11538956  0.2331567
Shot.put      0.51759781  0.12846837 -0.2488129
High.jump     0.33008517  0.14455012  0.4027002
X400m         0.28353292  0.43082552  0.1039085
X110m.hurdle  0.44888733 -0.01689589  0.2242200
Discus        0.17652518  0.39500915 -0.4082391
Pole.vault    0.09405773 -0.33898477 -0.2216853
Javeline      0.60412432 -0.33173454  0.1978128
X1500m       -0.21947068  0.44800961  0.2632527
> acp2<-PCA(dec.active,scale.unit = T, ncp=2, graph=T, axes=c(1,2))
Warning message:
ggrepel: 3 unlabeled data points (too many overlaps). Consider increasing max.overlaps 
> var<-get_pca_var(acp2)
> var$coord
                    Dim.1       Dim.2
X100m        -0.850625692 -0.17939806
Long.jump     0.794180641  0.28085695
Shot.put      0.733912733  0.08540412
High.jump     0.610083985 -0.46521415
X400m        -0.701603377  0.29017826
X110m.hurdle -0.764125197 -0.02474081
Discus        0.743209016  0.04966086
Pole.vault   -0.217268042  0.80745110
Javeline      0.428226639  0.38610928
X1500m        0.004278487  0.78448019
> var$contrib
                    Dim.1      Dim.2
X100m        1.754429e+01  1.7505098
Long.jump    1.529317e+01  4.2904162
Shot.put     1.306014e+01  0.3967224
High.jump    9.024811e+00 11.7715838
X400m        1.193554e+01  4.5799296
X110m.hurdle 1.415754e+01  0.0332933
Discus       1.339309e+01  0.1341398
Pole.vault   1.144592e+00 35.4618611
Javeline     4.446377e+00  8.1086683
X1500m       4.438531e-04 33.4728757
> fviz_pca_var(acp2, col.var = "black")
> library(corrplot)
corrplot 0.84 loaded
Warning message:
le package ‘corrplot’ a été compilé avec la version R 4.0.5 
> corrplot(var$cos2, is.corr=FALSE)
> fviz_pca_var(acp2, col.var = "cos2",             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE) 
>              
> fviz_contrib(acp2, choice = "var", axes = 1, top = 10)
> 
>              
> get_pca_var(acp2)
Principal Component Analysis Results for variables
 ===================================================
  Name      
1 "$coord"  
2 "$cor"    
3 "$cos2"   
4 "$contrib"
  Description                                    
1 "Coordinates for the variables"                
2 "Correlations between variables and dimensions"
3 "Cos2 for the variables"                       
4 "contributions of the variables"               
> ind <- get_pca_ind(acp2)
> ind
Principal Component Analysis Results for individuals
 ===================================================
  Name       Description                       
1 "$coord"   "Coordinates for the individuals" 
2 "$cos2"    "Cos2 for the individuals"        
3 "$contrib" "contributions of the individuals"
> fviz_pca_ind(acp2) 
> fviz_pca_ind (acp2, col.ind = "cos2",
+               gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),repel = TRUE )
>               
> fviz_pca_ind (acp2, pointsize = "cos2",
+               pointshape = 21, fill = "#E7B800",
+               repel = TRUE )
>               
> fviz_cos2(acp2, choice = "ind")
> fviz_pca_biplot(acp2, repel = TRUE,
+                 col.var = "#2E9FDF",            col.ind = "#696969")