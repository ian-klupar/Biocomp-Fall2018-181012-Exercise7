#funcitons
#- the word "function" <- declaration
#- arguments
#- curly brackets
#- code for functions
#- function name

#"name" = "function"("define arguments"){
# do some stuff using arguments and other functions
#}
rm(list=ls())
setwd("/Users/ianklupar/Desktop/intro-biocomp/class/exercise-5/Biocomp-Fall2018-180928-Exercise5")
list.files()

wages = read.csv("wages.csv", stringsAsFactors = F)
str(wages)

#get rows of people with ed = 12 -> take min
edu.12 <- wages[wages$yearsSchool==12, ]
min.12 <- min(edu.12$wage)

edu.16 <- wages[wages$yearsSchool==16, ]
min.16 <- min(edu.16$wage)

min.16 - min.12

compareEd = function(year1,year2){
  edu1 <- wages[wages$yearsSchool==year1, ]
  min1 <- min(edu1$wage)
  edu2 <- wages[wages$yearsSchool==year2, ]
  min2 <- min(edu2$wage)
  diff <- min1 -min2
  return(plot(diff))
}
compareEd(10,12)


func1 <- function(){
  d=2
  paste("func1 :", d)
}
func1()

func2 <- function(d){
  paste("func2:", d)
}
func2(d=2)

