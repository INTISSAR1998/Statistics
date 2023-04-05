> library(factoextra)
Le chargement a n�cessit� le package : ggplot2
Welcome! Want to learn more? See two factoextra-related books at https://goo.gl/ve3WBa
Warning messages:
  1: le package 'factoextra' a �t� compil� avec la version R 4.1.3 
2: le package 'ggplot2' a �t� compil� avec la version R 4.1.3 
> library(FactoMineR)
Warning message:
  le package 'FactoMineR' a �t� compil� avec la version R 4.1.3 
> data("housetasks")
> housetasks
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
> balloonplot(t(tc), main ="housetasks", xlab ="", ylab="",label = FALSE, show.margins = FALSE)
Error in balloonplot(t(tc), main = "housetasks", xlab = "", ylab = "",  : 
                       could not find function "balloonplot"
                     > library(ggplot2)
                     > balloonplot(t(tc), main ="housetasks", xlab ="", ylab="",label = FALSE, show.margins = FALSE)
                     Error in balloonplot(t(tc), main = "housetasks", xlab = "", ylab = "",  : 
                                            could not find function "balloonplot"
                                          > library(ggplot)
                                          Error in library(ggplot) : aucun package nomm� 'ggplot' n'est trouv�

Restarting R session...

> install.packages("ggplot2")
Installation du package dans 'C:/Users/lahme/Documents/R/win-library/4.1'
(car 'lib' n'est pas sp�cifi�)
                     trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/ggplot2_3.3.5.zip'
                     Content type 'application/zip' length 4129433 bytes (3.9 MB)
                     downloaded 3.9 MB
                     
                     package 'ggplot2' successfully unpacked and MD5 sums checked
                     
                     The downloaded binary packages are in
                     C:\Users\lahme\AppData\Local\Temp\RtmpADGqY5\downloaded_packages
                     > balloonplot(t(tc), main ="housetasks", xlab ="", ylab="",label = FALSE, show.margins = FALSE)
                     Error in balloonplot(t(tc), main = "housetasks", xlab = "", ylab = "",  : 
                                            could not find function "balloonplot"
                                          > chisq <- chisq.test (housetasks) 
                                          > chisq
                                          
                                          Pearson's Chi-squared test

data:  housetasks
X-squared = 1944.5, df = 36, p-value < 2.2e-16

> resultat <- CA (housetasks, graph = FALSE)
Error in CA(housetasks, graph = FALSE) : could not find function "CA"
> resultat <- CA(housetasks, graph = FALSE)
Error in CA(housetasks, graph = FALSE) : could not find function "CA"
> library ("FactoMineR")
Warning message:
le package 'FactoMineR' a �t� compil� avec la version R 4.1.3 
> resultat <- CA(housetasks, graph = FALSE)
> resultat
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
> library(factoextra)
Le chargement a n�cessit� le package : ggplot2
Welcome! Want to learn more? See two factoextra-related books at https://goo.gl/ve3WBa
Warning messages:
1: le package 'factoextra' a �t� compil� avec la version R 4.1.3 
2: le package 'ggplot2' a �t� compil� avec la version R 4.1.3 
> summary(resultat)

Call:
CA(X = housetasks, graph = FALSE) 

The chi square of independence between the two variables is equal to 1944.456 (p-value =  0 ).

Eigenvalues
                       Dim.1   Dim.2   Dim.3
Variance               0.543   0.445   0.127
% of var.             48.692  39.913  11.395
Cumulative % of var.  48.692  88.605 100.000

Rows (the 10 first)
              Iner*1000     Dim.1     ctr    cos2     Dim.2     ctr    cos2  
Laundry     |   134.160 |  -0.992  18.287   0.740 |   0.495   5.564   0.185 |
Main_meal   |    90.692 |  -0.876  12.389   0.742 |   0.490   4.736   0.232 |
Dinner      |    38.246 |  -0.693   5.471   0.777 |   0.308   1.321   0.154 |
Breakfeast  |    41.124 |  -0.509   3.825   0.505 |   0.453   3.699   0.400 |
Tidying     |    24.667 |  -0.394   1.998   0.440 |  -0.434   2.966   0.535 |
Dishes      |    19.587 |  -0.189   0.426   0.118 |  -0.442   2.844   0.646 |
Shopping    |    14.970 |  -0.118   0.176   0.064 |  -0.403   2.515   0.748 |
Official    |    53.300 |   0.227   0.521   0.053 |   0.254   0.796   0.066 |
Driving     |   101.509 |   0.742   8.078   0.432 |   0.653   7.647   0.335 |
Finances    |    29.564 |   0.271   0.875   0.161 |  -0.618   5.559   0.837 |
              Dim.3     ctr    cos2  
Laundry      -0.317   7.968   0.075 |
Main_meal    -0.164   1.859   0.026 |
Dinner       -0.207   2.097   0.070 |
Breakfeast    0.220   3.069   0.095 |
Tidying      -0.094   0.489   0.025 |
Dishes        0.267   3.634   0.236 |
Shopping      0.203   2.223   0.189 |
Official      0.923  36.940   0.881 |
Driving       0.544  18.596   0.233 |
Finances      0.035   0.062   0.003 |

Columns
              Iner*1000     Dim.1     ctr    cos2     Dim.2     ctr    cos2  
Wife        |   301.019 |  -0.838  44.462   0.802 |   0.365  10.312   0.152 |
Alternating |   117.824 |  -0.062   0.104   0.005 |   0.292   2.783   0.105 |
Husband     |   381.373 |   1.161  54.234   0.772 |   0.602  17.787   0.208 |
Jointly     |   314.725 |   0.149   1.200   0.021 |  -1.027  69.118   0.977 |
              Dim.3     ctr    cos2  
Wife         -0.200  10.822   0.046 |
Alternating   0.849  82.549   0.890 |
Husband      -0.189   6.133   0.020 |
Jointly      -0.046   0.495   0.002 |
> eig.val <- get_eigenvalue (resultat)
> eig.val
      eigenvalue variance.percent cumulative.variance.percent
Dim.1  0.5428893         48.69222                    48.69222
Dim.2  0.4450028         39.91269                    88.60491
Dim.3  0.1270484         11.39509                   100.00000
> fviz_eig(resultat)
> fviz_eig(resultat,addlabels = TRUE, ylim = c(0, 50)) 
> row <- get_ca_row(resultat) 
> row
Correspondence Analysis - Results for rows
 ===================================================
  Name       Description                
1 "$coord"   "Coordinates for the rows" 
2 "$cos2"    "Cos2 for the rows"        
3 "$contrib" "contributions of the rows"
4 "$inertia" "Inertia of the rows"      
> head(row$coord)
                Dim 1      Dim 2       Dim 3
Laundry    -0.9918368  0.4953220 -0.31672897
Main_meal  -0.8755855  0.4901092 -0.16406487
Dinner     -0.6925740  0.3081043 -0.20741377
Breakfeast -0.5086002  0.4528038  0.22040453
Tidying    -0.3938084 -0.4343444 -0.09421375
Dishes     -0.1889641 -0.4419662  0.26694926
> head(row$cos2)
               Dim 1     Dim 2      Dim 3
Laundry    0.7399874 0.1845521 0.07546047
Main_meal  0.7416028 0.2323593 0.02603787
Dinner     0.7766401 0.1537032 0.06965666
Breakfeast 0.5049433 0.4002300 0.09482670
Tidying    0.4398124 0.5350151 0.02517249
Dishes     0.1181178 0.6461525 0.23572969
> head(row$contrib)
                Dim 1    Dim 2    Dim 3
Laundry    18.2867003 5.563891 7.968424
Main_meal  12.3888433 4.735523 1.858689
Dinner      5.4713982 1.321022 2.096926
Breakfeast  3.8249284 3.698613 3.069399
Tidying     1.9983518 2.965644 0.488734
Dishes      0.4261663 2.844117 3.634294
> fviz_ca_row(resultat, repel = TRUE)
> head(row$cos2, 4) 
               Dim 1     Dim 2      Dim 3
Laundry    0.7399874 0.1845521 0.07546047
Main_meal  0.7416028 0.2323593 0.02603787
Dinner     0.7766401 0.1537032 0.06965666
Breakfeast 0.5049433 0.4002300 0.09482670
> install.packages("corrplot")
Installation du package dans 'C:/Users/lahme/Documents/R/win-library/4.1'
(car 'lib' n'est pas sp�cifi�)
                     trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/corrplot_0.92.zip'
                     Content type 'application/zip' length 3844755 bytes (3.7 MB)
                     downloaded 3.7 MB
                     
                     package 'corrplot' successfully unpacked and MD5 sums checked
                     
                     The downloaded binary packages are in
                     C:\Users\lahme\AppData\Local\Temp\RtmpADGqY5\downloaded_packages
                     > library("corrplot")
                     corrplot 0.92 loaded
                     Warning message:
                       le package 'corrplot' a �t� compil� avec la version R 4.1.3 
                     > corrplot(row$cos2, is.corr = FALSE) 
                     > head(row$contrib) 
                     Dim 1    Dim 2    Dim 3
                     Laundry    18.2867003 5.563891 7.968424
                     Main_meal  12.3888433 4.735523 1.858689
                     Dinner      5.4713982 1.321022 2.096926
                     Breakfeast  3.8249284 3.698613 3.069399
                     Tidying     1.9983518 2.965644 0.488734
                     Dishes      0.4261663 2.844117 3.634294
                     > fviz_contrib(res.ca, choice = "row", axes = 1, top = 10) 
                     Error in .get_facto_class(X) : object 'res.ca' not found
                     > fviz_contrib(resultat, choice = "row", axes = 1, top = 10) 
                     > fviz_contrib(resultat, choice = "row", axes = 2, top = 10)
                     > fviz_contrib (resultat, choice = "row", axes = 1:2, top = 10) 
                     > fviz_ca_row (resultat, col.row = "contrib", 
                                    +              
                                      +              gradient.cols = c ("#00AFBB", "#E7B800", "#FC4E07"), 
                                    +              
                                      +              repel = TRUE) 
                     > col <- get_ca_col(resultat) 
                     > col
                     Correspondence Analysis - Results for columns
                     ===================================================
                       Name       Description                   
                     1 "$coord"   "Coordinates for the columns" 
                     2 "$cos2"    "Cos2 for the columns"        
                     3 "$contrib" "contributions of the columns"
                     4 "$inertia" "Inertia of the columns"      
                     > head(col$coord) 
                     Dim 1      Dim 2       Dim 3
                     Wife        -0.83762154  0.3652207 -0.19991139
                     Alternating -0.06218462  0.2915938  0.84858939
                     Husband      1.16091847  0.6019199 -0.18885924
                     Jointly      0.14942609 -1.0265791 -0.04644302
                     > head(col$cos2)
                     Dim 1     Dim 2       Dim 3
                     Wife        0.801875947 0.1524482 0.045675847
                     Alternating 0.004779897 0.1051016 0.890118521
                     Husband     0.772026244 0.2075420 0.020431728
                     Jointly     0.020705858 0.9772939 0.002000236
                     > head(col$contrib)
                     Dim 1     Dim 2      Dim 3
                     Wife        44.462018 10.312237 10.8220753
                     Alternating  0.103739  2.782794 82.5492464
                     Husband     54.233879 17.786612  6.1331792
                     Jointly      1.200364 69.118357  0.4954991
                     > fviz_ca_col (resulat)
                     Error in .get_facto_class(X) : object 'resulat' not found
                     > fviz_ca_col(resulat)
                     Error in .get_facto_class(X) : object 'resulat' not found
                     > col <- get_ca_col(res.ca)
                     Error in get_ca_col(res.ca) : object 'res.ca' not found
                     > fviz_ca_col(resultat)
                     > fviz_ca_col (resultat, col.col = "cos2", 
                                    +              
                                      +              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), 
                                    +              
                                      +              repel = TRUE) 
                     > fviz_contrib (resultat, choice = "col", axes = 1:2) 
                     > fviz_contrib (resultat, choice = "col", axes = 1:2)
                     > fviz_ca_biplot (resultat, repel = TRUE) 
                     ro <- c("A", "BDD", "CE", "Techn")
