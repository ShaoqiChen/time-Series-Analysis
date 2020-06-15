library(isdals)
data(bodyfat)
#attach(bodyfat)
# cor( cbind(Fat, Triceps,Thigh,Midarm) )

# measure correlation of Fat and Triceps, after regression both on Thigh
Fat.hat <- predict(lm(Fat ~ Thigh))
Triceps.hat <- predict(lm(Triceps ~ Thigh))
cor((Fat.hat - Fat), (Triceps.hat - Triceps))


# make use of ppcor library
library(ppcor);
pcor(cbind(Fat,Triceps,Thigh))

# $estimate
#               Fat   Triceps     Thigh
# Fat     1.0000000 0.1749822 0.4814109
# Triceps 0.1749822 1.0000000 0.7130120
# Thigh   0.4814109 0.7130120 1.0000000

# if apply on multivariables
Fat.hat <- predict(lm(Fat ~ Thigh+Midarm))
Triceps.hat <- predict(lm(Triceps ~ Thigh+Midarm))
cor((Fat.hat - Fat), (Triceps.hat - Triceps))
## if partial out more variables, correlation is more strong
## 0.33815