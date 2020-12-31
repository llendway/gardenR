## code to prepare `garden_spending` dataset

library(googlesheets4)
library(tidyverse)
gs4_deauth()

garden_spending <- read_sheet("https://docs.google.com/spreadsheets/d/1dPVHwZgR9BxpigbHLnA0U99TtVHHQtUzNB9UR0wvb7o/edit?usp=sharing",
                              col_types = "ccccnn")

usethis::use_data(garden_spending, overwrite = TRUE)
