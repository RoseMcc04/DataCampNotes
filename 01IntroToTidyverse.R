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

# Sort in descending order

gapminder %>%
  arrange(desc(gdpPercap))

# Filtering then arranging

gapminder %>%
  filter(year == 2007) %>%
  arrange(desc(gdpPercap))

# Practicing using the "mutate" verb
# Mutate changes or adds variables
# Changing a variable with mutate

gapminder %>%
  mutate(pop = pop / 1000000)

# Adding a new variable with mutate

gapminder %>%
  mutate(gdp = gdpPercap * pop)

# Combining Verbs

gapminder %>%
  mutate(gdp = gdpPercap * pop) %>%
  filter(year == 2007) %>%
  arrange(desc(gdp))
