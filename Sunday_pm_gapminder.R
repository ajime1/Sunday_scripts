# This is a script to explore the gapminder dataset using R
# Alyssa Jimenez
# alyssa.jimenez@UTSouthwestern.edu
# April 19, 2015

# read in data as tab-delimited
gap.in <-read.table("output/combined_gapMinder.tsv", 
                    sep = "\t", 
                    header= TRUE)

for (row.number in 1:10) {
  for (col.number in 1:5)
print (gap.in[row.number,col.number])
}

gap.in[1:10,1:5]

# custom functions

add.me <- function(x,y){
  x + y
}

add.me(3,4)


# had to change ' to nothing in our document then rerun gap.in







