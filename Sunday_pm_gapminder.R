# This is a script to explore the gapminder dataset using R
# Alyssa Jimenez
# alyssa.jimenez@UTSouthwestern.edu
# April 19, 2015

# install an external library- bioconductor website has tons of packages for R- very important
# installing a package, the load library into working environment

install.packages("dplyr", dependencies = TRUE)

library("dplyr")

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













