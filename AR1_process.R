phi <- .6
N <- 1000
Z <- rnorm(N, 0, 1)
x <- NULL
x[1] <- Z[1]
for (t in 2:N) {
    x[t] <- Z[t] + phi * x[t - 1]
}
x.ts <- ts(x);
par(mfrow=c(2,1));
plot(x.ts, main="AR(1) Time Series on White Noise, phi = .6")
x.acf = acf(x.ts, main=paste("AR(1) Time Series on White Noise, phi =",phi))