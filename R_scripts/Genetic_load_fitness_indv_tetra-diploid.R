library("reshape")
library("ggplot2")
library(data.table)
library(ggpmisc)
library(RColorBrewer)
library(colorBlindness)

SV1=fread("/PATH/FOR/OUTPUT/FILE/file_indv_load_tetra-diploid.txt")
#SV1=melt(SV1,id.vars = names(SV1)[c(1:4)])
SV1=melt(SV1,id.vars = names(SV1)[c(1,2,3,4,6)])

my.formula <- y ~ x
 
ggplot(SV1,aes(generation,value, color=scenario)) + scale_color_brewer(palette='Dark2', ) + stat_summary() + facet_wrap("variable",scales = "free") + geom_smooth(method = "lm")




