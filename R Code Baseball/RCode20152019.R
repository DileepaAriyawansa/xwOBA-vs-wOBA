library(ggplot2)

base1519 = read.csv("C:/Users/dilee/Desktop/R Code Baseball/201519stats.csv" , sep=",")

attach(base1519)

p <- ggplot(data = base1519, aes(x = wobadif, y = on_base_plus_slg)) + geom_point() + stat_smooth(method = "lm", se = FALSE) + facet_wrap(~year)+ ggtitle("The Expected Statistics of Baseball Players - 2015-2019")

p