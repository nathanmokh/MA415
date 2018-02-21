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

#12.6.1
who1 <- who %>%
  gather(new_sp_m014:newrel_f65, key = "key", value = "cases", na.rm = TRUE)
who1
who1 %>%
  count(key)
who2 <- who1 %>% 
  mutate(key = stringr::str_replace(key, "newrel", "new_rel"))
who2

who3 <- who2 %>% 
  separate(key, c("new", "type", "sexage"), sep = "_")
who3

who3 %>% 
  count(new)

who4 <- who3 %>% 
  select(-new, -iso2, -iso3)

who5 <- who4 %>% 
  separate(sexage, c("sex", "age"), sep = 1)
who5

#1
#I think it's reasonable, but it could have some bad effects depending on what you want
#an NA value can prevent certain computations from being made while having a zero
#may result in some inaccurate computations like means

#2
#If you neglect the step we won't be able to separate into var, sexage, and new

#3

#4
  