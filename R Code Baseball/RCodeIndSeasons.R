library(ggplot2)

base15 = read.csv("C:/Users/dilee/Desktop/R Code Baseball/2019stats.csv" , sep=",")

attach(base15)

fit <-lm(on_base_plus_slg ~ wobadif)

summary(fit)

plot(wobadif, on_base_plus_slg, pch = 16, cex = 1.3, col = "blue", main = "The Expected Statistics of Baseball Players - 2019", xlab = "Weighted on Base Average Difference", ylab = "OPS")



abline(coef(fit)[1:2])

cf <- round(coef(fit), 3)

eq <- paste0("WBAD = ", cf[1],  ifelse(sign(cf[2])==1, " + ", " - "), abs(cf[2]), " OPS ")

mtext(eq, 3, line=-2)