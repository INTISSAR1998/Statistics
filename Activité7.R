> m<-matrix(c(13,2,5,20,2,8,10,5,5,7,1,22),nrow = 4,ncol=3,byrow = T)
> m
     [,1] [,2] [,3]
[1,]   13    2    5
[2,]   20    2    8
[3,]   10    5    5
[4,]    7    1   22
> tab<-as.table(m)
> tab
   A  B  C
A 13  2  5
B 20  2  8
C 10  5  5
D  7  1 22
> row.names(tab)<-c("A let","B éco","CE","Tech")
> colnames(tab<-c("U fac","Prepa","Autres inst"))
NULL
> tab
[1] "U fac"       "Prepa"       "Autres inst"
> tab<-as.table(m)
> row.names(tab)<-c("A let","B éco","CE","Tech")
> colnames(tab)<-c("U fac","Prepa","Autres inst")
> tab
      U fac Prepa Autres inst
A let    13     2           5
B éco    20     2           8
CE       10     5           5
Tech      7     1          22
> # on va faire le test de khi deux pour justifier la dépendance
> chisq.test(tab)

	Pearson's Chi-squared test

data:  tab
X-squared = 24.917, df = 6, p-value = 0.0003538

Warning message:
In chisq.test(tab) : l'approximation du Chi-2 est peut-être incorrecte
> class(tab)
[1] "table"
> # pvalue = 0.0003538 < 0.05 on refuse H0 on refuse l'indépendance, les deux variables sont liées
> library(FactoMineR)
Warning message:
le package ‘FactoMineR’ a été compilé avec la version R 4.0.5 
> library(factoextra)
Le chargement a nécessité le package : ggplot2
RStudio Community is a great place to get help:
https://community.rstudio.com/c/tidyverse
Welcome! Want to learn more? See two factoextra-related books at https://goo.gl/ve3WBa
Warning messages:
1: le package ‘factoextra’ a été compilé avec la version R 4.0.5 
2: le package ‘ggplot2’ a été compilé avec la version R 4.0.5 
> res<-CA(tab, ncp=4,graph = F)
> res
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
> res$call
$X
      U fac Prepa Autres inst
A let    13     2           5
B éco    20     2           8
CE       10     5           5
Tech      7     1          22

$marge.col
      U fac       Prepa Autres inst 
        0.5         0.1         0.4 

$marge.row
A let B éco    CE  Tech 
  0.2   0.3   0.2   0.3 

$ncp
[1] 2

$row.w
[1] 1 1 1 1

$excl
NULL

$call
CA(X = tab, ncp = 4, graph = F)

$Xtot
      U fac Prepa Autres inst
A let    13     2           5
B éco    20     2           8
CE       10     5           5
Tech      7     1          22

$N
[1] 100

> res11<-res$call
> res11$marge.row
A let B éco    CE  Tech 
  0.2   0.3   0.2   0.3 
> res11$marge.col
      U fac       Prepa Autres inst 
        0.5         0.1         0.4 
> res11$Xtot
      U fac Prepa Autres inst
A let    13     2           5
B éco    20     2           8
CE       10     5           5
Tech      7     1          22
> eig<-get_eigenvalue(res)
> eig
      eigenvalue variance.percent cumulative.variance.percent
Dim.1 0.19980638         80.18985                    80.18985
Dim.2 0.04936029         19.81015                   100.00000
> fviz_eig(res)
> # selon la règle du coude on retient un seul axe