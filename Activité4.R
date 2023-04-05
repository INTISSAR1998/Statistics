> afc <- read.csv("C:/Users/lahme/Desktop/afc.txt", sep=";", comment.char="#")
>   View(afc)
> afc
X Univ Classes.prepa Autres
1 A           13             2      5
2 BDD         20             2      8
3 CE          10             5      5
4 Techn        7             1     22
> str(afc)
'data.frame':	4 obs. of  4 variables:
  $ X            : chr  "A        " "BDD      " "CE       " "Techn    "
$ Univ         : num  13 20 10 7
$ Classes.prepa: num  2 2 5 1
$ Autres       : num  5 8 5 22
> view(afc)
Error in view(afc) : could not find function "view"
> tc <- as.table(as.matrix (afc))
> tc
X         Univ Classes.prepa Autres
A A         13   2              5    
B BDD       20   2              8    
C CE        10   5              5    
D Techn      7   1             22    
> chisq <- chisq.test (afc)
Error in chisq.test(afc) : 
  all entries of 'x' must be nonnegative and finite
> genre<-as.factor(c("Univ", "Classes.prepa", "Autres"))
> genre
[1] Univ          Classes.prepa Autres       
Levels: Autres Classes.prepa Univ
> data<-as.factor(c("Univ", "Classes.prepa", "Autres"))
> data
[1] Univ          Classes.prepa Autres       
Levels: Autres Classes.prepa Univ
> chisq <- chisq.test (afc)
Error in chisq.test(afc) : 
  all entries of 'x' must be nonnegative and finite
> chisq <- chisq.test (data)
Error in if (any(x < 0) || anyNA(x)) stop("all entries of 'x' must be nonnegative and finite") : 
  missing value where TRUE/FALSE needed
In addition: Warning message:
  In Ops.factor(x, 0) : '<' n'est pas pertinent pour des variables facteurs
> chisq
Error: object 'chisq' not found
> install.packages("gplots")
Installation du package dans 'C:/Users/lahme/Documents/R/win-library/4.1'
(car 'lib' n'est pas sp�cifi�)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/gplots_3.1.1.zip'
Content type 'application/zip' length 603155 bytes (589 KB)
downloaded 589 KB

package 'gplots' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\lahme\AppData\Local\Temp\Rtmp8cb7X7\downloaded_packages
> chisq <- chisq.test (data)
Error in if (any(x < 0) || anyNA(x)) stop("all entries of 'x' must be nonnegative and finite") : 
  missing value where TRUE/FALSE needed
In addition: Warning message:
  In Ops.factor(x, 0) : '<' n'est pas pertinent pour des variables facteurs
> chisq
Error: object 'chisq' not found
> library ("FactoMineR")
Warning message:
le package 'FactoMineR' a �t� compil� avec la version R 4.1.3 
> library(factoextra)
Le chargement a n�cessit� le package : ggplot2
Need help? Try Stackoverflow: https://stackoverflow.com/tags/ggplot2
Welcome! Want to learn more? See two factoextra-related books at https://goo.gl/ve3WBa
Warning messages:
1: le package 'factoextra' a �t� compil� avec la version R 4.1.3 
2: le package 'ggplot2' a �t� compil� avec la version R 4.1.3 
> chisq <- chisq.test (data)
Error in if (any(x < 0) || anyNA(x)) stop("all entries of 'x' must be nonnegative and finite") : 
  missing value where TRUE/FALSE needed
In addition: Warning message:
In Ops.factor(x, 0) : '<' n'est pas pertinent pour des variables facteurs
> chisq
Error: object 'chisq' not found
> print(afc,row.names=FALSE)
X Univ Classes.prepa Autres
A           13             2      5
BDD         20             2      8
CE          10             5      5
Techn        7             1     22
> print(data,row.names=FALSE)
[1] Univ          Classes.prepa Autres       
Levels: Autres Classes.prepa Univ
>                    ro <- c("A", "BDD", "CE", "Techn")
> ro <- c("A", "BDD", "CE", "Techn")
> data <- data.frame(Univ, Classes.prepa, Autres)
Error in data.frame(Univ, Classes.prepa, Autres) : 
  object 'Univ' not found
> Univ <- 13,20,10,7
Error: unexpected ',' in "Univ <- 13,"
> Univ <- [13,20,10,7]
Error: unexpected '[' in "Univ <- ["
> Univ <- c(13,20,10,7)
> Classes.prepa <- c(2,2,5,1)
> Autres <- c(5,8,5,22)
> data <- data.frame(Univ, Classes.prepa, Autres)
> data
Univ Classes.prepa Autres
1   13             2      5
2   20             2      8
3   10             5      5
4    7             1     22
> data<-as.data.frame(data,ro)
> data
Univ Classes.prepa Autres
A       13             2      5
BDD     20             2      8
CE      10             5      5
Techn    7             1     22
> table() <- as.table(as.matrix (data))
Error in table() <- as.table(as.matrix(data)) : 
  invalid (NULL) left side of assignment
> 
  > table <- as.table(as.matrix (data))
> table
Univ Classes.prepa Autres
A       13             2      5
BDD     20             2      8
CE      10             5      5
Techn    7             1     22
> chisq <- chisq.test (data)
Warning message:
  In chisq.test(data) : Chi-squared approximation may be incorrect
> resultat <- CA (data, graph = FALSE)
> resultat
**Results of the Correspondence Analysis (CA)**
  The row variable has  4  categories; the column variable has 3 categories
The chi square of independence between the two variables is equal to 24.91667 (p-value =  0.0003538004 ).
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
> resultat <- CA (data, graph = FALSE)
> resultat <- CA (data, graph = TRUE)
> summary(resultat)

Call:
  CA(X = data, graph = TRUE) 

The chi square of independence between the two variables is equal to 24.91667 (p-value =  0.0003538004 ).

Eigenvalues
Dim.1   Dim.2
Variance               0.200   0.049
% of var.             80.190  19.810
Cumulative % of var.  80.190 100.000

Rows
Iner*1000     Dim.1     ctr    cos2     Dim.2     ctr    cos2  
A             |    20.250 |   0.297   8.844   0.873 |  -0.114   5.224   0.127 |
  BDD           |    33.333 |   0.254   9.681   0.580 |  -0.216  28.341   0.420 |
  CE            |    56.250 |   0.344  11.815   0.420 |   0.404  66.132   0.580 |
  Techn         |   139.333 |  -0.681  69.659   0.999 |   0.022   0.303   0.001 |
  
  Columns
Iner*1000     Dim.1     ctr    cos2     Dim.2     ctr    cos2  
Univ          |    68.333 |   0.341  29.016   0.848 |  -0.144  20.984   0.152 |
  Classes.prepa |    61.667 |   0.479  11.461   0.371 |   0.623  78.539   0.629 |
  Autres        |   119.167 |  -0.545  59.523   0.998 |   0.024   0.477   0.002 |
  > eig.val <- get_eigenvalue (resultat)
> eig.val
eigenvalue variance.percent cumulative.variance.percent
Dim.1 0.19980638         80.18985                    80.18985
Dim.2 0.04936029         19.81015                   100.00000
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
Dim 1       Dim 2
A      0.2972483 -0.11354938
BDD    0.2539284 -0.21594323
CE     0.3435636  0.40399761
Techn -0.6811363  0.02231108
> head(row$cos2)
Dim 1       Dim 2
A     0.8726572 0.127342840
BDD   0.5803167 0.419683304
CE    0.4196833 0.580316696
Techn 0.9989282 0.001071784
> head(row$contrib)
Dim 1      Dim 2
A      8.844216  5.2242253
BDD    9.681317 28.3414963
CE    11.815031 66.1317371
Techn 69.659436  0.3025413
> fviz_ca_row(resultat, repel = TRUE)
> h
Error: object 'h' not found
> library("corrplot")
corrplot 0.92 loaded
Warning message:
  le package 'corrplot' a �t� compil� avec la version R 4.1.3 
> corrplot(row$cos2, is.corr = FALSE)
> head(row$contrib)
Dim 1      Dim 2
A      8.844216  5.2242253
BDD    9.681317 28.3414963
CE    11.815031 66.1317371
Techn 69.659436  0.3025413
> fviz_contrib(res.ca, choice = "row", axes = 1, top = 10)
Error in .get_facto_class(X) : object 'res.ca' not found
> fviz_contrib(resultat.ca, choice = "row", axes = 1, top = 10)
Error in .get_facto_class(X) : object 'resultat.ca' not found
> fviz_contrib(resultat, choice = "row", axes = 1, top = 10)
> fviz_contrib(resultat), choice = "row", axes = 2, top = 10)
Error: unexpected ',' in "fviz_contrib(resultat),"
> fviz_contrib(resultat , choice = "row", axes = 2, top = 10)
> fviz_contrib (resultat, choice = "row", axes = 1:2, top = 10)
> fviz_ca_row (resultat, col.row = "contrib",
               +              gradient.cols = c ("#00AFBB", "#E7B800", "#FC4E07"),
               +              repel = TRUE)
> 
  > col <- get_ca_col(resultat)
> col
Correspondence Analysis - Results for columns
===================================================
  Name       Description                   
1 "$coord"   "Coordinates for the columns" 
2 "$cos2"    "Cos2 for the columns"        
3 "$contrib" "contributions of the columns"
4 "$inertia" "Inertia of the columns"      
> 
  > head(col$coord)
Dim 1       Dim 2
Univ           0.3405158 -0.14392945
Classes.prepa  0.4785344  0.62263268
Autres        -0.5452783  0.02425365
> head(col$cos2)
Dim 1      Dim 2
Univ          0.8484218 0.15157820
Classes.prepa 0.3713436 0.62865642
Autres        0.9980255 0.00197451
> head(col$contrib)
Dim 1      Dim 2
Univ          29.01583 20.9841652
Classes.prepa 11.46086 78.5391444
Autres        59.52331  0.4766904
> fviz_ca_col (resulat)
Error in .get_facto_class(X) : object 'resulat' not found
> fviz_ca_col (resultat)
> resultat
**Results of the Correspondence Analysis (CA)**
  The row variable has  4  categories; the column variable has 3 categories
The chi square of independence between the two variables is equal to 24.91667 (p-value =  0.0003538004 ).
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
> resultat$col
$coord
Dim 1       Dim 2
Univ           0.3405158 -0.14392945
Classes.prepa  0.4785344  0.62263268
Autres        -0.5452783  0.02425365

$contrib
Dim 1      Dim 2
Univ          29.01583 20.9841652
Classes.prepa 11.46086 78.5391444
Autres        59.52331  0.4766904

$cos2
Dim 1      Dim 2
Univ          0.8484218 0.15157820
Classes.prepa 0.3713436 0.62865642
Autres        0.9980255 0.00197451

$inertia
[1] 0.06833333 0.06166667 0.11916667

> resultat$call
$X
Univ Classes.prepa Autres
A       13             2      5
BDD     20             2      8
CE      10             5      5
Techn    7             1     22

$marge.col
Univ Classes.prepa        Autres 
0.5           0.1           0.4 

$marge.row
A   BDD    CE Techn 
0.2   0.3   0.2   0.3 

$ncp
[1] 2

$row.w
[1] 1 1 1 1

$excl
NULL

$call
CA(X = data, graph = TRUE)

$Xtot
Univ Classes.prepa Autres
A       13             2      5
BDD     20             2      8
CE      10             5      5
Techn    7             1     22

$N
[1] 100

> resultat$svd
$vs
[1] 4.469971e-01 2.221717e-01 8.391298e-17

$U
[,1]       [,2]
[1,]  0.6649893 -0.5110883
[2,]  0.5680762 -0.9719653
[3,]  0.7686036  1.8184023
[4,] -1.5238048  0.1004227

$V
[,1]       [,2]
[1,]  0.7617852 -0.6478297
[2,]  1.0705539  2.8024836
[3,] -1.2198700  0.1091662

> resultat$eig
eigenvalue percentage of variance cumulative percentage of variance
dim 1 0.19980638               80.18985                          80.18985
dim 2 0.04936029               19.81015                         100.00000
> fviz_ca_col (res.ca, col.col = "cos2",
               +              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
               +              repel = TRUE)
Error in .get_facto_class(X) : object 'res.ca' not found
> 
  > fviz_ca_col (resultat, col.col = "cos2",
                 +              gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"),
                 +              repel = TRUE)
> 
  > fviz_contrib (resultat, choice = "col", axes = 1:2)
> fviz_ca_biplot (resultat, repel = TRUE)
serie