## code to prepare 2020 garden datasets

library(googlesheets4)
library(tidyverse)
library(lubridate)
gs4_deauth()

garden_harvest <- read_sheet("https://docs.google.com/spreadsheets/d/1DekSazCzKqPS2jnGhKue7tLxRU3GVL1oxi-4bEM5IWw/edit?usp=sharing") %>%
  mutate(date = ymd(date))

garden_planting <- read_sheet("https://docs.google.com/spreadsheets/d/11YH0NtXQTncQbUse5wOsTtLSKAiNogjUA21jnX5Pnl4/edit?usp=sharing",
                              na = c("", "NA")) %>%
  mutate(date = ymd(date))

garden_spending <- read_sheet("https://docs.google.com/spreadsheets/d/1dPVHwZgR9BxpigbHLnA0U99TtVHHQtUzNB9UR0wvb7o/edit?usp=sharing",
                              col_types = "ccccnn")

usethis::use_data(garden_harvest, overwrite = TRUE)
usethis::use_data(garden_planting, overwrite = TRUE)
usethis::use_data(garden_spending, overwrite = TRUE)

