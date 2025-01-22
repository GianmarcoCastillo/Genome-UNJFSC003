setwd("/home/marcos/Escritorio/ENTERO/")

library(readxl)
library(tidyverse)

df <- read_xlsx("subsistema.xlsx")

head(df)
dim(df)
library(tidyr)
library(ggplot2)
library(ggpubr)
library(ggeasy)
library(ggsci)
df

df_long <- df %>% pivot_longer(cols=2:27,names_to = "subsystema",
                               values_to = "count")


ggbarplot(df_long, x = "subsystema", y = "count",
          fill = "subsystema",
          color = "black",
          palette = "jco",
          sort.val = "desc",
          sort.by.groups = FALSE,
          x.text.angle = 35)+
  theme(legend.position = "none")+
  geom_bar(stat = "identity",
           color = "#050505",
           lwd = 0.8, fill = "#436EEE")+
  coord_flip()
  