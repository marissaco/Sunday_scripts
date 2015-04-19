# This is a script to explore the gapminder dataset using R
# Marissa Co
# marissasco@gmail.com
# 2015-04-19

# Run once per computer to install
# install.packages("dplyr", dependencies = TRUE)

# Run every time you want to use this package
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header = TRUE)

# Filter data
gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

# Challenge
# Calculate the mean population per continent per year for years prior to 1990

gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent, year) %>%
  summarize(mean = mean(pop)) -> data.out
# Overrides dplyr and prints everything
# as.data.frame()

# Add iris data frame to environment
attach(iris)

# Install tidyr package
# install.packages("tidyr", dependencies =TRUE)

# Load tidyr package
library("tidyr")

# Turn iris dataset from wide into long format
iris.long <- gather(iris, "Measurement", "Value", 1:4)

