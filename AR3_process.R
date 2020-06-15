phi1 <- .5;
phi2 <- -.4;
phi3 <- .6
X.ts <- arima.sim(list(ar=c(phi1,phi2,phi3)),n=1000)
par(mfrow=c(3,1))
plot(X.ts, main=paste("AR(2) Time Series on White Noise, phi1=",phi1,"phi2=",phi2))
X.acf = acf(X.ts,main=paste("AR(2) Time Series on White Noise, phi1=",phi1,"phi2=",phi2))
acf(X.ts,type="partial",main="AR(2) partial ACF")