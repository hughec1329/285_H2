# MGT285 - HW02
# 20130411 HCrockford

library(gdata)
library(ggplot2)                        # 
cell = read.table("cel.csv",header = TRUE, sep = ",")
cell = cell[1:18,]
cell$Year = strptime(cell$Year, "%m/%d/%Y")
names(cell) = c("year","cell","t")
ggplot(aes(x = year,y = cell), data = cell)+ geom_line() + geom_point() + ggtitle('Cell Phone usage in the US, 1987 - 2004') + theme(axis.title.y = element_text("Percent of population using cell phones"))
ggsave("usage.pdf")
