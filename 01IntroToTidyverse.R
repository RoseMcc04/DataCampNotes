#' Introduction to the Tidyverse Notes
#' 
#' @author Rose McCormack
#' @note 24 August 2024
#' @description This document will contain notes for a lesson on tidyverse.
#' 

# Load dataset and required packages
library(gapminder)
library(dplyr)
library(ggplot2)
library(magrittr)

# Display gapminder dataset
gapminder

# Practicing using the "filter" verb
# Filter subsets observations in datasets
# First step in data analysis

# Filtering for United States

gapminder %>%
  filter(year == 2007, country == "United States")

## Practicing using the "arrange" verb
## Arrange sorts a table based on a variable
## Sorting with arrange

gapminder %>%
  arrange(gdpPercap)
