> prod<-c(47, 53, 49, 50, 46, 55, 54, 58, 61, 52, 54, 50, 51,51, 49)
> length(prod)
[1] 15
> VT<-sum((prod-mean(prod))^2)
> VT
[1] 224
> # on va calculer la variance between B
> # B = somme des (nj*(mean(yi)-mean(y))^2)
> B<-5*(49-52)^2 + 5*(56-52)^2 + 5*(51-52)^2
> B
[1] 130
> # la variance within: VT -B
> w<-VT-B
> w
[1] 94
> VT
[1] 224