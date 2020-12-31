## code to prepare `garden_planting` dataset

library(googlesheets4)
library(tidyverse)
library(lubridate)
gs4_deauth()

garden_planting <- read_sheet("https://docs.google.com/spreadsheets/d/11YH0NtXQTncQbUse5wOsTtLSKAiNogjUA21jnX5Pnl4/edit?usp=sharing",
                              na = c("", "NA")) %>%
  mutate(date = ymd(date))

usethis::use_data(garden_planting, overwrite = TRUE)
