> x<-c(1, 2, 3, 4,5,6,7,8,9,10)
> x
 [1]  1  2  3  4  5  6  7  8  9 10
> y<-c(10.45, 11, 11.52, 11.99, 12.5, 13, 13.51, 14, 14.49, 15.02)
> y
 [1] 10.45 11.00 11.52 11.99 12.50 13.00 13.51 14.00 14.49 15.02
> plot(x,y)
> reg<-lm(y~x)
> abline(reg)
> y<-c(10.45, 11, 11.62, 11.99, 12.5, 13, 13.51, 14, 14.19, 15.52)
> y
 [1] 10.45 11.00 11.62 11.99 12.50 13.00 13.51 14.00 14.19 15.52
> reg<-lm(y~x)
> abline(reg)
> plot(x,y)
> abline(reg)
> cor(x,y, method=c("pearson"))
[1] 0.9919078
> x1<-c(1, 2, 3, 4,5,6)
> y1<-c(2.5, 9, 19, 32, 45, 78)
> plot(x,y)
> plot(x1,y1)
> cor(x1,y1, method=c("spearman"))
[1] 1
> x2<-x1
> x2
[1] 1 2 3 4 5 6
> p<-0.5*x2
> p
[1] 0.5 1.0 1.5 2.0 2.5 3.0
> y2<-c(0.48, 1.1, 1.56, 2.1, 2.8, 3.4)
> cor(x2,y2, method=c("spearman"))
[1] 1
> plot(x2,y2)
> x3<-x2
> p<-0.5*x3^2
> 
> p
[1]  0.5  2.0  4.5  8.0 12.5 18.0
> y3<-c(0.45, 2.01, 4.5, 8.2, 12.4, 18.5)
> plot(x3,y3)
> p<-2*x3^2
> y3<-p
> plot(x3,y3)
> cor(x3,y3, method=c("spearman"))
[1] 1
> y3<-c(0.45, 2.5, 5, 8.6, 13, 21)
> plot(x3,y3)
> cor(x3,y3, method=c("spearman"))
[1] 1
> y3<-c(0.45, 2.5, 5, 8.6, 18, 45)
> plot(x3,y3)
> cor(x3,y3, method=c("spearman"))
[1] 1
> cor(x3,y3, method=c("pearson"))
[1] 0.871677
> cor.test(x,y,method=c("pearson"))

	Pearson's product-moment correlation

data:  x and y
t = 22.098, df = 8, p-value = 1.858e-08
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.9648779 0.9981551
sample estimates:
      cor 
0.9919078 

> cor.test(x3,y3, method=c("spearman"))

	Spearman's rank correlation rho

data:  x3 and y3
S = 0, p-value = 0.002778
alternative hypothesis: true rho is not equal to 0
sample estimates:
rho 
  1 