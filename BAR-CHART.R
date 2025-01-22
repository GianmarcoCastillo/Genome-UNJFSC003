library(ggplot2)
library(ggpubr)
library(dplyr)
## install.packages("ggpubr")

setwd("/home/marcos/Escritorio/CURSO-PY/")
df <- read.csv("PERRITO.csv", header=TRUE)
df

Compound<-df$Compound
amaount<-df$amaount

fig<-ggbarplot(
  data=df, x = "Compound", y = "amaount",
  add =c("mean_sd"), fill="Compound", width=0.5, size=0.2,
  add.params=list(size=0.9, width=0.15))
fig

