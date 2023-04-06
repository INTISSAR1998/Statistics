> serie<-c(93.2, 90.23, 96.30, 120.20, 95.37, 91.00 , 93.10, 124.67,
           +             94.20, 94.33, 97.57, 130.47
           +             95.53, 99.60, 104.13, 133.47,
           Error: unexpected numeric constant in:
             "            94.20, 94.33, 97.57, 130.47
            95.53"
           >             94.63, 101.80, 100.50,
           Error: unexpected ',' in "            94.63,"
           >             131.37,
           Error: unexpected ',' in "            131.37,"
           >             83.20,93.67,100.13, 139.23,
           Error: unexpected ',' in "            83.20,"
           >             86.63,94.57,104.83,
           Error: unexpected ',' in "            86.63,"
           >             138.90,
           Error: unexpected ',' in "            138.90,"
           >             89.80,98.37,105.67, 137.87)
Error: unexpected ',' in "            89.80,"
> library(factoextra)
Le chargement a n�cessit� le package : ggplot2
Need help? Try Stackoverflow: https://stackoverflow.com/tags/ggplot2
Welcome! Want to learn more? See two factoextra-related books at https://goo.gl/ve3WBa
Warning messages:
  1: le package 'factoextra' a �t� compil� avec la version R 4.1.3 
2: le package 'ggplot2' a �t� compil� avec la version R 4.1.3 
> library(FactoMineR)
Warning message:
  le package 'FactoMineR' a �t� compil� avec la version R 4.1.3 
> serie<-c(93.2, 90.23, 96.30, 120.20, 95.37, 91.00 , 93.10, 124.67,
           +             94.20, 94.33, 97.57, 130.47
           +             95.53, 99.60, 104.13, 133.47,
           Error: unexpected numeric constant in:
             "            94.20, 94.33, 97.57, 130.47
            95.53"
           >             94.63, 101.80, 100.50,
           Error: unexpected ',' in "            94.63,"
           >             131.37,
           Error: unexpected ',' in "            131.37,"
           >             83.20,93.67,100.13, 139.23,
           Error: unexpected ',' in "            83.20,"
           >             86.63,94.57,104.83,
           Error: unexpected ',' in "            86.63,"
           >             138.90,
           Error: unexpected ',' in "            138.90,"
           >             89.80,98.37,105.67, 137.87)
Error: unexpected ',' in "            89.80,"
> serie<-c(93.2, 90.23, 96.30, 120.20, 95.37, 91.00 , 93.10, 124.67,
           +             94.20, 94.33, 97.57, 130.47
           +             95.53, 99.60, 104.13, 133.47,
           Error: unexpected numeric constant in:
             "            94.20, 94.33, 97.57, 130.47
            95.53"
           >             94.63, 101.80, 100.50,
           Error: unexpected ',' in "            94.63,"
           >             131.37,
           Error: unexpected ',' in "            131.37,"
           >             83.20,93.67,100.13, 139.23,
           Error: unexpected ',' in "            83.20,"
           >             86.63,94.57,104.83,
           Error: unexpected ',' in "            86.63,"
           >             138.90,
           Error: unexpected ',' in "            138.90,"
           >             89.80,98.37,105.67, 137.87)
Error: unexpected ',' in "            89.80,"
> serie<-c(93.2, 90.23, 96.30, 120.20, 95.37, 91.00 , 93.10, 124.67,
           +             94.20, 94.33, 97.57, 130.47,
           +             95.53, 99.60, 104.13, 133.47,
           +             94.63, 101.80, 100.50,
           +             131.37,
           +             83.20,93.67,100.13, 139.23,
           +             86.63,94.57,104.83,
           +             138.90,
           +             89.80,98.37,105.67, 137.87)
> serie
[1]  93.20  90.23  96.30 120.20  95.37  91.00  93.10 124.67
[9]  94.20  94.33  97.57 130.47  95.53  99.60 104.13 133.47
[17]  94.63 101.80 100.50 131.37  83.20  93.67 100.13 139.23
[25]  86.63  94.57 104.83 138.90  89.80  98.37 105.67 137.87
> serie<-ts(serie)
> serie<-ts(serie,frequency = 4)
> serie
Qtr1   Qtr2   Qtr3   Qtr4
1  93.20  90.23  96.30 120.20
2  95.37  91.00  93.10 124.67
3  94.20  94.33  97.57 130.47
4  95.53  99.60 104.13 133.47
5  94.63 101.80 100.50 131.37
6  83.20  93.67 100.13 139.23
7  86.63  94.57 104.83 138.90
8  89.80  98.37 105.67 137.87
> plot(serie)
> plot.ts(serie)
> library(TTA)
Error in library(TTA) : aucun package nomm� 'TTA' n'est trouv�
> install.packages("TTR")
Installation du package dans 'C:/Users/lahme/Documents/R/win-library/4.1'
(car 'lib' n'est pas sp�cifi�)
installation des d�pendances 'xts', 'zoo', 'curl'

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/xts_0.12.1.zip'
Content type 'application/zip' length 943907 bytes (921 KB)
downloaded 921 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/zoo_1.8-10.zip'
Content type 'application/zip' length 1056634 bytes (1.0 MB)
downloaded 1.0 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/curl_4.3.2.zip'
Content type 'application/zip' length 4322349 bytes (4.1 MB)
downloaded 4.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/TTR_0.24.3.zip'
Content type 'application/zip' length 536622 bytes (524 KB)
downloaded 524 KB

package 'xts' successfully unpacked and MD5 sums checked
package 'zoo' successfully unpacked and MD5 sums checked
package 'curl' successfully unpacked and MD5 sums checked
package 'TTR' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\lahme\AppData\Local\Temp\Rtmpct60BL\downloaded_packages
> library(TTR)
Warning message:
  le package 'TTR' a �t� compil� avec la version R 4.1.3 
> sma<-sma(serie,n=4)
Error in sma(serie, n = 4) : could not find function "sma"
> sma<-SMA(serie,n=4)
> sma
Qtr1     Qtr2     Qtr3     Qtr4
1       NA       NA       NA  99.9825
2 100.5250 100.7175  99.9175 101.0350
3 100.7425 101.5750 102.6925 104.1425
4 104.4750 105.7925 107.4325 108.1825
5 107.9575 108.5075 107.6000 107.0750
6 104.2175 102.1850 102.0925 104.0575
7 104.9150 105.1400 106.3150 106.2325
8 107.0250 107.9750 108.1850 107.9275
> install.packages("fpp2")
Installation du package dans 'C:/Users/lahme/Documents/R/win-library/4.1'
(car 'lib' n'est pas sp�cifi�)
installation des d�pendances 'quadprog', 'quantmod', 'fracdiff', 'lmtest', 'timeDate', 'tseries', 'urca', 'RcppArmadillo', 'expsmooth', 'fma', 'forecast'

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/quadprog_1.5-8.zip'
Content type 'application/zip' length 50391 bytes (49 KB)
downloaded 49 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/quantmod_0.4.18.zip'
Content type 'application/zip' length 1031850 bytes (1007 KB)
downloaded 1007 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/fracdiff_1.5-1.zip'
Content type 'application/zip' length 135950 bytes (132 KB)
downloaded 132 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/lmtest_0.9-40.zip'
Content type 'application/zip' length 415716 bytes (405 KB)
downloaded 405 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/timeDate_3043.102.zip'
Content type 'application/zip' length 1552168 bytes (1.5 MB)
downloaded 1.5 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/tseries_0.10-50.zip'
Content type 'application/zip' length 409442 bytes (399 KB)
downloaded 399 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/urca_1.3-0.zip'
Content type 'application/zip' length 1105998 bytes (1.1 MB)
downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/RcppArmadillo_0.11.0.0.0.zip'
Content type 'application/zip' length 2402988 bytes (2.3 MB)
downloaded 2.3 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/expsmooth_2.3.zip'
Content type 'application/zip' length 281603 bytes (275 KB)
downloaded 275 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/fma_2.4.zip'
Content type 'application/zip' length 665695 bytes (650 KB)
downloaded 650 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/forecast_8.16.zip'
Content type 'application/zip' length 2345839 bytes (2.2 MB)
downloaded 2.2 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/fpp2_2.4.zip'
Content type 'application/zip' length 358982 bytes (350 KB)
downloaded 350 KB

package 'quadprog' successfully unpacked and MD5 sums checked
package 'quantmod' successfully unpacked and MD5 sums checked
package 'fracdiff' successfully unpacked and MD5 sums checked
package 'lmtest' successfully unpacked and MD5 sums checked
package 'timeDate' successfully unpacked and MD5 sums checked
package 'tseries' successfully unpacked and MD5 sums checked
package 'urca' successfully unpacked and MD5 sums checked
package 'RcppArmadillo' successfully unpacked and MD5 sums checked
package 'expsmooth' successfully unpacked and MD5 sums checked
package 'fma' successfully unpacked and MD5 sums checked
package 'forecast' successfully unpacked and MD5 sums checked
package 'fpp2' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\lahme\AppData\Local\Temp\Rtmpct60BL\downloaded_packages
> library(fpp2)
Registered S3 method overwritten by 'quantmod':
  method            from
  as.zoo.data.frame zoo 
-- Attaching packages -------------------------------- fpp2 2.4 --
�^s forecast  8.16     �^s expsmooth 2.3 
�^s fma       2.4      

Warning messages:
1: le package 'fpp2' a �t� compil� avec la version R 4.1.3 
2: le package 'forecast' a �t� compil� avec la version R 4.1.3 
3: le package 'fma' a �t� compil� avec la version R 4.1.3 
4: le package 'expsmooth' a �t� compil� avec la version R 4.1.3 
> autoplot(serie)
> autoplot(serie) + autolayer(sma) 
Warning message:
Removed 3 row(s) containing missing values (geom_path). 
> sma
      Qtr1     Qtr2     Qtr3     Qtr4
1       NA       NA       NA  99.9825
2 100.5250 100.7175  99.9175 101.0350
3 100.7425 101.5750 102.6925 104.1425
4 104.4750 105.7925 107.4325 108.1825
5 107.9575 108.5075 107.6000 107.0750
6 104.2175 102.1850 102.0925 104.0575
7 104.9150 105.1400 106.3150 106.2325
8 107.0250 107.9750 108.1850 107.9275
> seriecomponents <- decompose(serie)
> seriecomponents
$x
    Qtr1   Qtr2   Qtr3   Qtr4
1  93.20  90.23  96.30 120.20
2  95.37  91.00  93.10 124.67
3  94.20  94.33  97.57 130.47
4  95.53  99.60 104.13 133.47
5  94.63 101.80 100.50 131.37
6  83.20  93.67 100.13 139.23
7  86.63  94.57 104.83 138.90
8  89.80  98.37 105.67 137.87

$seasonal
        Qtr1       Qtr2       Qtr3       Qtr4
1 -13.275714  -8.904286  -4.706964  26.886964
2 -13.275714  -8.904286  -4.706964  26.886964
3 -13.275714  -8.904286  -4.706964  26.886964
4 -13.275714  -8.904286  -4.706964  26.886964
5 -13.275714  -8.904286  -4.706964  26.886964
6 -13.275714  -8.904286  -4.706964  26.886964
7 -13.275714  -8.904286  -4.706964  26.886964
8 -13.275714  -8.904286  -4.706964  26.886964

$trend
      Qtr1     Qtr2     Qtr3     Qtr4
1       NA       NA 100.2538 100.6213
2 100.3175 100.4763 100.8888 101.1587
3 102.1338 103.4175 104.3088 105.1337
4 106.6125 107.8075 108.0700 108.2325
5 108.0537 107.3375 105.6463 103.2012
6 102.1388 103.0750 104.4862 105.0275
7 105.7275 106.2738 106.6287 107.5000
8 108.0800 108.0563       NA       NA

$random
        Qtr1       Qtr2       Qtr3       Qtr4
1         NA         NA  0.7532143 -7.3082143
2  8.3282143 -0.5719643 -3.0817857 -3.3757143
3  5.3419643 -0.1832143 -2.0317857 -1.5507143
4  2.1932143  0.6967857  0.7669643 -1.6494643
5 -0.1480357  3.3667857 -0.4392857  1.2817857
6 -5.6630357 -0.5007143  0.3507143  7.3155357
7 -5.8217857 -2.7994643  2.9082143  4.5130357
8 -5.0042857 -0.7819643         NA         NA

$figure
[1] -13.275714  -8.904286  -4.706964  26.886964

$type
[1] "additive"

attr(,"class")
[1] "decomposed.ts"
> 