## code to prepare `garden_harvest` dataset

library(googlesheets4)
library(tidyverse)
library(lubridate)
gs4_deauth()

garden_harvest <- read_sheet("https://docs.google.com/spreadsheets/d/1DekSazCzKqPS2jnGhKue7tLxRU3GVL1oxi-4bEM5IWw/edit?usp=sharing") %>%
  mutate(date = ymd(date))

usethis::use_data(garden_harvest, overwrite = TRUE)
