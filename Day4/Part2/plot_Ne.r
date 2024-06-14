library(relater)
library(ggplot2)
coal <- read.coal("popsizes/SGDP_Africa_chr15.coal")
#diploid effective population size is the 0.5* inverse coalescence rate
coal$popsize <- 0.5/coal$haploid.coalescence.rate
#multiply epochs times by 28 to scale to years (assuming 28 years per generation)
coal$epoch.start <- 28 * coal$epoch.start
head(coal) #contains all vs all coalescence rates
#We subset to within group coalescence rates, but feel free to look at cross-population
#rates too
coal <- subset(coal, group1 == group2)
p <- ggplot(coal) +
geom_step(aes(x = epoch.start, y = 0.5/haploid.coalescence.rate, color = group2)) +
scale_x_continuous(trans = "log10", limit = c(1e2, 1e7)) +
scale_y_continuous(trans = "log10", limit = c(1e3,1e7))

ggsave("popsizes/SGDP_Africa_chr15.pdf")