library(tidyverse)
library(nycflights13)
library(ggridges)
library(modelr)

view(flights)

mod <- lm(arr_delay ~ dep_delay, data = flights)
