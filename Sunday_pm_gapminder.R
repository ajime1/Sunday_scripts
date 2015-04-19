# This is a script to explore the gapminder dataset using R
# Alyssa Jimenez
# alyssa.jimenez@UTSouthwestern.edu
# April 19, 2015

# install an external library- bioconductor website has tons of packages for R- very important
# installing a package, the load library into working environment and depencencies

#install.packages("dplyr", dependencies = TRUE)

#library("dplyr"), once you run a library to a computer, you can comment it out

# read in data as tab-delimited
gap.in <-read.table("output/combined_gapMinder.tsv", 
                    sep = "\t", 
                    header= TRUE)

##for (row.number in 1:10) {
 ## for (col.number in 1:5)
##print (gap.in[row.number,col.number])}

##gap.in[1:10,1:5]

# creating custom functions

##add.me <- function(x,y){
 ## x + y}

##add.me(3,4)

# had to change ' to nothing in our document then rerun gap.in


# %>% is like | in shell
gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))


gap.in %>%
  filter(country == "China") %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

# Challenge: calculate the mean population per continent for years prior to 1990

gap.in %>%
  select(continent, year, pop) %>%
  filter(year<1990) %>%
  group_by(continent) %>%
  summarize(mean = mean(pop))

# doing something here. not sure what....
data(iris)
attach(iris)
View(iris)

#installing another package
install.packages("tidyr", dependencies = TRUE)

library(tidyr)
# Turn iris dataset from wide into long format
iris.long <- gather(iris, "Measurement", "Value", 1:4)
foo <- gather(iris, "Species", 1:4)

library(dplyr)
# From http://stackoverflow.com/questions/1181060
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)

gather(stocks, stock, price, -time)

stocks %>% gather(stock, price, -time)

