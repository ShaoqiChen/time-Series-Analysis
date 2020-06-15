bev.ts <- ts(bev,start=1500);

par(mfrow=c(1,1));

plot(bev.ts,ylab="Price",main="Beveridge Wheat Price Data")

bev.MA <- filter(bev.ts,rep(1/31,31),sides=2);

lines(bev.MA,col="red")

par(mfrow=c(3,1));
Y <- bev.ts/bev.MA
plot(Y,ylab="scale price",main="Transformed beveridfe Wheat Price Data")
acf(na.omit(Y),main="Autocorrelation Function of Transformed Beveridge")
acf(na.omit(Y),type="partial",main="Partial Autocorrelation Function of Transformed Beveridge")

ar(na.omit(Y),order.max = 5)

# Coefficients:
#       1        2  
#  0.7239  -0.2957

# Order selected 2  sigma^2 estimated as  0.02692