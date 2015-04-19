# This is a script to explore the gapminder dataset using R
# Marissa Co
# marissasco@gmail.com
# 2015-04-19

# Run once per computer to install
install.packages("dplyr", dependencies = TRUE)

# Run every time you want to use this package
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header = TRUE)

for (row.number in 1:10){
  for (col.number in 1:5){
    print(gap.in[row.number,col.number])
  }
}

gap.in[1:10,1:5]

# Functions
add.me <- function(x, y){
  (x + y) * 8
}

add.me(3,4)

