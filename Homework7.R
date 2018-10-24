rm(list=ls())
setwd("~/Desktop/intro-biocomp/class/Biocomp-Fall2018-181012-Exercise7")
iris <- read.csv("iris.csv", header = T, stringsAsFactors = F)

# 1. function that returns odd rows of any data frame
odd <- function(x){
a <- seq(1, nrow(x),2)
x[a, ]
}
#example
odd(iris)

# 2. repeat a subset of last week, but use functions
# return the number of observations for a given species included in the data set
species <- function(name){
  n <- iris[iris$Species == name,]
  return(nrow(n))
}
#example
species('setosa')

# return a dataframe for flowers with Sepal.Width greater than a value specified by function
sep.width <- function(measure){
  df <- iris[iris$Sepal.Width > measure,]
  return(df)
}
#example
sep.width(4)

# write the data for a given species to a comma-deliminated file with the species as name
write.species <- function(file){
  n <- iris[iris$Species == file,]
  write.csv(n, file = file)
}
#example
write.species('setosa')













