library(MTS)
da=read.table("ch6/m-gasoil.txt",header=T)
head(da)
zt=da[,3:4]; xt=da[,5:6]
VARorder(zt)
VARXorder(zt,xt,maxp=11,maxm=2)
m1=VARX(zt,2,xt,1)
cov(m1$residuals)
m1a=refVARX(m1,thres=1) ## Model refinement
MTSdiag(m1a) 

