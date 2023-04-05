> library(FactoMineR)
Warning message:
le package ‘FactoMineR’ a été compilé avec la version R 4.0.5 
> db<-housetasks
> str(db)
'data.frame':	13 obs. of  4 variables:
 $ Wife       : int  156 124 77 82 53 32 33 12 10 13 ...
 $ Alternating: int  14 20 11 36 11 24 23 46 51 13 ...
 $ Husband    : int  2 5 7 15 1 4 9 23 75 21 ...
 $ Jointly    : int  4 4 13 7 57 53 55 15 3 66 ...
> # 13 modalités de X et 4 modalités de y
> summary(db)
      Wife         Alternating       Husband          Jointly      
 Min.   :  0.00   Min.   : 1.00   Min.   :  1.00   Min.   :  2.00  
 1st Qu.: 10.00   1st Qu.:11.00   1st Qu.:  5.00   1st Qu.:  4.00  
 Median : 32.00   Median :14.00   Median :  9.00   Median : 15.00  
 Mean   : 46.15   Mean   :19.54   Mean   : 29.31   Mean   : 39.15  
 3rd Qu.: 77.00   3rd Qu.:24.00   3rd Qu.: 23.00   3rd Qu.: 57.00  
 Max.   :156.00   Max.   :51.00   Max.   :160.00   Max.   :153.00  
> tc <- as.table(as.matrix (housetasks))
> tc
           Wife Alternating Husband Jointly
Laundry     156          14       2       4
Main_meal   124          20       5       4
Dinner       77          11       7      13
Breakfeast   82          36      15       7
Tidying      53          11       1      57
Dishes       32          24       4      53
Shopping     33          23       9      55
Official     12          46      23      15
Driving      10          51      75       3
Finances     13          13      21      66
Insurance     8           1      53      77
Repairs       0           3     160       2
Holidays      0           1       6     153
> chisq.test(tc)

	Pearson's Chi-squared test

data:  tc
X-squared = 1944.5, df = 36, p-value < 2.2e-16

> # p value  < 0.05, donc on refuse l'hypothèse H0, les deux variables x et y sont dépendantes, donc il est intéressant d'appliquer l'AFC
> res<-CA(tc, ncp=5, graph = T)
Warning message:
ggrepel: 1 unlabeled data points (too many overlaps). Consider increasing max.overlaps 
> res
**Results of the Correspondence Analysis (CA)**
The row variable has  13  categories; the column variable has 4 categories
The chi square of independence between the two variables is equal to 1944.456 (p-value =  0 ).
*The results are available in the following objects:

   name              description                   
1  "$eig"            "eigenvalues"                 
2  "$col"            "results for the columns"     
3  "$col$coord"      "coord. for the columns"      
4  "$col$cos2"       "cos2 for the columns"        
5  "$col$contrib"    "contributions of the columns"
6  "$row"            "results for the rows"        
7  "$row$coord"      "coord. for the rows"         
8  "$row$cos2"       "cos2 for the rows"           
9  "$row$contrib"    "contributions of the rows"   
10 "$call"           "summary called parameters"   
11 "$call$marge.col" "weights of the columns"      
12 "$call$marge.row" "weights of the rows"         
Warning messages:
1: ggrepel: 1 unlabeled data points (too many overlaps). Consider increasing max.overlaps 
2: ggrepel: 1 unlabeled data points (too many overlaps). Consider increasing max.overlaps 
> summary(res)

Call:
CA(X = tc, ncp = 5, graph = T) 

The chi square of independence between the two variables is equal to 1944.456 (p-value =  0 ).

Eigenvalues
                       Dim.1   Dim.2   Dim.3
Variance               0.543   0.445   0.127
% of var.             48.692  39.913  11.395
Cumulative % of var.  48.692  88.605 100.000

Rows (the 10 first)
              Iner*1000     Dim.1     ctr    cos2     Dim.2     ctr    cos2     Dim.3     ctr    cos2  
Laundry     |   134.160 |  -0.992  18.287   0.740 |   0.495   5.564   0.185 |  -0.317   7.968   0.075 |
Main_meal   |    90.692 |  -0.876  12.389   0.742 |   0.490   4.736   0.232 |  -0.164   1.859   0.026 |
Dinner      |    38.246 |  -0.693   5.471   0.777 |   0.308   1.321   0.154 |  -0.207   2.097   0.070 |
Breakfeast  |    41.124 |  -0.509   3.825   0.505 |   0.453   3.699   0.400 |   0.220   3.069   0.095 |
Tidying     |    24.667 |  -0.394   1.998   0.440 |  -0.434   2.966   0.535 |  -0.094   0.489   0.025 |
Dishes      |    19.587 |  -0.189   0.426   0.118 |  -0.442   2.844   0.646 |   0.267   3.634   0.236 |
Shopping    |    14.970 |  -0.118   0.176   0.064 |  -0.403   2.515   0.748 |   0.203   2.223   0.189 |
Official    |    53.300 |   0.227   0.521   0.053 |   0.254   0.796   0.066 |   0.923  36.940   0.881 |
Driving     |   101.509 |   0.742   8.078   0.432 |   0.653   7.647   0.335 |   0.544  18.596   0.233 |
Finances    |    29.564 |   0.271   0.875   0.161 |  -0.618   5.559   0.837 |   0.035   0.062   0.003 |

Columns
              Iner*1000     Dim.1     ctr    cos2     Dim.2     ctr    cos2     Dim.3     ctr    cos2  
Wife        |   301.019 |  -0.838  44.462   0.802 |   0.365  10.312   0.152 |  -0.200  10.822   0.046 |
Alternating |   117.824 |  -0.062   0.104   0.005 |   0.292   2.783   0.105 |   0.849  82.549   0.890 |
Husband     |   381.373 |   1.161  54.234   0.772 |   0.602  17.787   0.208 |  -0.189   6.133   0.020 |
Jointly     |   314.725 |   0.149   1.200   0.021 |  -1.027  69.118   0.977 |  -0.046   0.495   0.002 |
> res$eig
      eigenvalue percentage of variance cumulative percentage of variance
dim 1  0.5428893               48.69222                          48.69222
dim 2  0.4450028               39.91269                          88.60491
dim 3  0.1270484               11.39509                         100.00000
> eig.val <- get_eigenvalue (res)
> eig.val
      eigenvalue variance.percent cumulative.variance.percent
Dim.1  0.5428893         48.69222                    48.69222
Dim.2  0.4450028         39.91269                    88.60491
Dim.3  0.1270484         11.39509                   100.00000
> # il y a 3 valeurs propres affichées bien qu'au niveau du code on a demandé ncp = 5 ; en fait le nbre des valeurs propres = min (p,q) = min(4,13)= 4 puisque la 1ere valeur prore triviale (1) est éliminée donc on va avoir 3 valeurs propres.
> # si on prend un plan formé par les deux premiers axes on va avoir un taux d'inertie de 88.6 %
> fviz_eig(res,addlabels = TRUE, ylim = c(0, 50))
> #**********************
> #***********************
> #************************
> # Deuxième partie d'analyse : examen des modalités lignes
> res$call
$X
           Wife Alternating Husband Jointly
Laundry     156          14       2       4
Main_meal   124          20       5       4
Dinner       77          11       7      13
Breakfeast   82          36      15       7
Tidying      53          11       1      57
Dishes       32          24       4      53
Shopping     33          23       9      55
Official     12          46      23      15
Driving      10          51      75       3
Finances     13          13      21      66
Insurance     8           1      53      77
Repairs       0           3     160       2
Holidays      0           1       6     153

$marge.col
       Wife Alternating     Husband     Jointly 
  0.3440367   0.1456422   0.2184633   0.2918578 

$marge.row
   Laundry  Main_meal     Dinner Breakfeast    Tidying     Dishes 
0.10091743 0.08772936 0.06192661 0.08027523 0.06995413 0.06479358 
  Shopping   Official    Driving   Finances  Insurance    Repairs 
0.06880734 0.05504587 0.07970183 0.06479358 0.07970183 0.09461009 
  Holidays 
0.09174312 

$ncp
[1] 3

$row.w
 [1] 1 1 1 1 1 1 1 1 1 1 1 1 1

$excl
NULL

$call
CA(X = tc, ncp = 5, graph = T)

$Xtot
           Wife Alternating Husband Jointly
Laundry     156          14       2       4
Main_meal   124          20       5       4
Dinner       77          11       7      13
Breakfeast   82          36      15       7
Tidying      53          11       1      57
Dishes       32          24       4      53
Shopping     33          23       9      55
Official     12          46      23      15
Driving      10          51      75       3
Finances     13          13      21      66
Insurance     8           1      53      77
Repairs       0           3     160       2
Holidays      0           1       6     153

$N
[1] 1744

> res$row
$coord
                Dim 1      Dim 2       Dim 3
Laundry    -0.9918368  0.4953220 -0.31672897
Main_meal  -0.8755855  0.4901092 -0.16406487
Dinner     -0.6925740  0.3081043 -0.20741377
Breakfeast -0.5086002  0.4528038  0.22040453
Tidying    -0.3938084 -0.4343444 -0.09421375
Dishes     -0.1889641 -0.4419662  0.26694926
Shopping   -0.1176813 -0.4033171  0.20261512
Official    0.2266324  0.2536132  0.92336416
Driving     0.7417696  0.6534143  0.54445849
Finances    0.2707669 -0.6178684  0.03479681
Insurance   0.6470759 -0.4737832 -0.28936051
Repairs     1.5287787  0.8642647 -0.47208778
Holidays    0.2524863 -1.4350066 -0.12958665

$contrib
                Dim 1      Dim 2       Dim 3
Laundry    18.2867003  5.5638913  7.96842443
Main_meal  12.3888433  4.7355230  1.85868941
Dinner      5.4713982  1.3210221  2.09692603
Breakfeast  3.8249284  3.6986131  3.06939857
Tidying     1.9983518  2.9656441  0.48873403
Dishes      0.4261663  2.8441170  3.63429434
Shopping    0.1755248  2.5151584  2.22335679
Official    0.5207837  0.7956201 36.94038942
Driving     8.0778371  7.6468564 18.59638635
Finances    0.8750075  5.5585460  0.06175066
Insurance   6.1470616  4.0203590  5.25263863
Repairs    40.7300940 15.8806509 16.59639139
Holidays    1.0773030 42.4539986  1.21261994

$cos2
                Dim 1      Dim 2       Dim 3
Laundry    0.73998741 0.18455213 0.075460467
Main_meal  0.74160285 0.23235928 0.026037873
Dinner     0.77664011 0.15370323 0.069656660
Breakfeast 0.50494329 0.40023001 0.094826699
Tidying    0.43981243 0.53501508 0.025172490
Dishes     0.11811778 0.64615253 0.235729693
Shopping   0.06365362 0.74765514 0.188691242
Official   0.05304464 0.06642648 0.880528877
Driving    0.43201860 0.33522911 0.232752289
Finances   0.16067678 0.83666958 0.002653634
Insurance  0.57601197 0.30880208 0.115185951
Repairs    0.70673575 0.22587147 0.067392778
Holidays   0.02979239 0.96235977 0.007847841

$inertia
 [1] 0.13415976 0.09069235 0.03824633 0.04112368 0.02466697
 [6] 0.01958732 0.01497017 0.05330000 0.10150885 0.02956446
[11] 0.05793584 0.31287411 0.19631064

> # deuxième manière de présenter les lignes
> row <- get_ca_row(res)
> row$coord
                Dim 1      Dim 2       Dim 3
Laundry    -0.9918368  0.4953220 -0.31672897
Main_meal  -0.8755855  0.4901092 -0.16406487
Dinner     -0.6925740  0.3081043 -0.20741377
Breakfeast -0.5086002  0.4528038  0.22040453
Tidying    -0.3938084 -0.4343444 -0.09421375
Dishes     -0.1889641 -0.4419662  0.26694926
Shopping   -0.1176813 -0.4033171  0.20261512
Official    0.2266324  0.2536132  0.92336416
Driving     0.7417696  0.6534143  0.54445849
Finances    0.2707669 -0.6178684  0.03479681
Insurance   0.6470759 -0.4737832 -0.28936051
Repairs     1.5287787  0.8642647 -0.47208778
Holidays    0.2524863 -1.4350066 -0.12958665
> # il s'agit des coordonnées des modalités lignes sur les 3 axes
> row$contrib
                Dim 1      Dim 2       Dim 3
Laundry    18.2867003  5.5638913  7.96842443
Main_meal  12.3888433  4.7355230  1.85868941
Dinner      5.4713982  1.3210221  2.09692603
Breakfeast  3.8249284  3.6986131  3.06939857
Tidying     1.9983518  2.9656441  0.48873403
Dishes      0.4261663  2.8441170  3.63429434
Shopping    0.1755248  2.5151584  2.22335679
Official    0.5207837  0.7956201 36.94038942
Driving     8.0778371  7.6468564 18.59638635
Finances    0.8750075  5.5585460  0.06175066
Insurance   6.1470616  4.0203590  5.25263863
Repairs    40.7300940 15.8806509 16.59639139
Holidays    1.0773030 42.4539986  1.21261994
> # il s'agit des contributions des modalités lignes
> # par exemple laundry contribue à 18.286 % à la formation de l'axe 1
> #☻ laundry main meal repairs sont les plus positionnées (contribution forte) sur l'axe 1
> # ensemble elles fournissent presque 71 % de l'inertie de l'axe1
> row$cos2
                Dim 1      Dim 2       Dim 3
Laundry    0.73998741 0.18455213 0.075460467
Main_meal  0.74160285 0.23235928 0.026037873
Dinner     0.77664011 0.15370323 0.069656660
Breakfeast 0.50494329 0.40023001 0.094826699
Tidying    0.43981243 0.53501508 0.025172490
Dishes     0.11811778 0.64615253 0.235729693
Shopping   0.06365362 0.74765514 0.188691242
Official   0.05304464 0.06642648 0.880528877
Driving    0.43201860 0.33522911 0.232752289
Finances   0.16067678 0.83666958 0.002653634
Insurance  0.57601197 0.30880208 0.115185951
Repairs    0.70673575 0.22587147 0.067392778
Holidays   0.02979239 0.96235977 0.007847841
> #• il s'agit d ela contribution de chaque axe à la formation d ela modalité
> # la dim 1 contribue à concurrence de 73.998 % de la mosalité laundry
> row$inertia
 [1] 0.13415976 0.09069235 0.03824633 0.04112368 0.02466697
 [6] 0.01958732 0.01497017 0.05330000 0.10150885 0.02956446
[11] 0.05793584 0.31287411 0.19631064
> sum(row$inertia)
[1] 1.11494
> length(row$inertia)
[1] 13
> fviz_ca_row(res, repel = TRUE)
> library(corrplot)
corrplot 0.84 loaded
Warning message:
le package ‘corrplot’ a été compilé avec la version R 4.0.5 
> corrplot(row$cos2, is.corr = FALSE)
> 
> fviz_contrib(res, choice = "row", axes = 1, top = 10)
> # Contributions des lignes à la dimension 2
> fviz_contrib(res, choice = "row", axes = 2, top = 10)
> 
> fviz_contrib(res, choice = "row", axes = 1, top = 10)
> 
> 
> fviz_contrib(res.ca, choice = "row", axes = 1, top = 10)
Error in .get_facto_class(X) : object 'res.ca' not found
> # Contributions des lignes à la dimension 2
> fviz_contrib(res.ca, choice = "row", axes = 2, top = 10)
Error in .get_facto_class(X) : object 'res.ca' not found
> 
> fviz_contrib(res, choice = "row", axes = 1, top = 10)
> # Contributions des lignes à la dimension 2
> fviz_contrib(res, choice = "row", axes = 2, top = 10)
> 
> fviz_ca_row (res, col.row = "contrib",  gradient.cols = c ("#00AFBB", "#E7B800", "#FC4E07"), repel = TRUE)
> 
> 
> col <- get_ca_col(res)
> col$coord
                  Dim 1      Dim 2       Dim 3
Wife        -0.83762154  0.3652207 -0.19991139
Alternating -0.06218462  0.2915938  0.84858939
Husband      1.16091847  0.6019199 -0.18885924
Jointly      0.14942609 -1.0265791 -0.04644302
> col$contrib
                Dim 1     Dim 2      Dim 3
Wife        44.462018 10.312237 10.8220753
Alternating  0.103739  2.782794 82.5492464
Husband     54.233879 17.786612  6.1331792
Jointly      1.200364 69.118357  0.4954991
> col$cos2
                  Dim 1     Dim 2       Dim 3
Wife        0.801875947 0.1524482 0.045675847
Alternating 0.004779897 0.1051016 0.890118521
Husband     0.772026244 0.2075420 0.020431728
Jointly     0.020705858 0.9772939 0.002000236
> col$inertia
[1] 0.3010185 0.1178242 0.3813729 0.3147248
> fviz_ca_col (res)
> fviz_ca_col (res, col.col = "cos2",
+              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
+              repel = TRUE)
> 
> fviz_contrib (res, choice = "col", axes = 1:2)
> fviz_ca_biplot (res, repel = TRUE)