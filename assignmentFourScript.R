library(tidyverse)
#10.5:
#1:
#We can tell that an object is a tibble by seeing its column types
#2
df<- data.frame(abc = 1, xyz = 'a')
df$x
df[, 'xyz']
df[,c('abc','xyz')]
#May cause frustration because the output isn't just the targeted output we want
#3
var <- 'mpg'
#Using a double bracket, for example frame[[var]]
#4
annoying <- tibble(
  `1` = 1:10,
  `2` = `1` * 2 + rnorm(length(`1`))
)
#4.1
annoying$`1`[1]
#4.2
plot(annoying)
points(annoying[2], col = 'blue')
points(annoying[1], col = 'red')
#4.3
toAdd <- annoying[[1]]/annoying[[2]]
annoying <- add_column(annoying,`3` = toAdd)
#4.4
names(annoying)[names(annoying) == '3'] <- 'three'
names(annoying)[names(annoying) == '2'] <- 'two'
names(annoying)[names(annoying) == '1'] <- 'one'
#5
tibble::enframe(annoying[1:3,])
#Frames data into name/value categories, would use when we want to easily access/summarize data
#6
#The print.dataFrame function, n_extra allows you to choose how many extra columns to print