library(pheatmap)
library(RColorBrewer)

data <- read.table("/home/marcos/Descargas/UNJFSC003.csv", header=TRUE, row.names = 1, sep=',')
colors <- colorRampPalette( rev(brewer.pal(9,"Blues")))(255)


pheatmap(data,
         colnames_angle=45,
         display_numbers = TRUE,
         number_color = "orange",
         fontsize_number = 10,
         col=colors,
         main = "Subcellular Protein Prediction",
         font.main = 2, font.sub=3, font.axis=4, font.lab=3,
         xlab = "Cell", ylab = "Genes",
         border_color = "black",
         cluster_cols = FALSE,
         margins = c(4, 10))

