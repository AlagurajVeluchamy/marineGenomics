upset(sets,
  query.legend = "bottom", nsets = 10, number.angles = 30, point.size = 3.5, line.size = 2,  
  queries = list(
  list(
    query = elements,
    params = list("Average", 0,4),
    color = "#Df5286", 
    active = T,
    query.name = "Total marked"
  )
  ), 
  boxplot.summary = c("logExp")
)


grid.text(
  "@Combinations",
  x = 0.90,
  y = 0.05,
  gp = gpar(
    fontsize = 10,
    fontface = 3
  )
)

install.packages("rJava")
install.packages("UpSetR")
install.packages("tidyverse")
install.packages("venneuler")
install.packages("grid")

library(rJava)
library(UpSetR)
library(tidyverse)
library(venneuler)
library(grid)

rawSets <- read.csv(file = "AllcorrectedListMod_Exp2.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)
##rawSets[is.na(rawSets)] <- 0
sets <- rawSets
dim(sets)
head(sets)
upset(sets,nsets = 7, number.angles = 30, point.size = 3.5, line.size = 2, mainbar.y.label = "Combinations of Histone modifications", sets.x.label = "Total genes marked", order.by = "freq", boxplot.summary = c("logExp"))
