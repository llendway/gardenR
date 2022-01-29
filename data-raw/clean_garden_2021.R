## code to prepare 2021 garden datasets

library(googlesheets4)
library(tidyverse)
library(lubridate)
gs4_deauth()

harvest_2021 <- read_sheet("https://docs.google.com/spreadsheets/d/1DU6dpxrbPGW2oJHQ6TG_xibazoGhvmRcqk2iPGOaRUI/edit?usp=sharing",
                           na = c("", "NA")) %>%
  mutate(date = ymd(date))

planting_2021 <- read_sheet("https://docs.google.com/spreadsheets/d/1osZ-chY3inHyOAdyYV8iR76_wQ5trP6RhqbCeq-UY_c/edit?usp=sharing",
                              na = c("", "NA")) %>%
  mutate(date = ymd(date))

spending_2021 <- read_sheet("https://docs.google.com/spreadsheets/d/1SHHVV9VLzWcKpunbDxyrUTQ8m1I0g5XSLr462363mQQ/edit?usp=sharing",
                            na = c("", "NA"))

usethis::use_data(harvest_2021, overwrite = TRUE)
usethis::use_data(planting_2021, overwrite = TRUE)
usethis::use_data(spending_2021, overwrite = TRUE)

