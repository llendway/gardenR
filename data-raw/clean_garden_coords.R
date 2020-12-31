## code to prepare `garden_planting` dataset

library(googlesheets4)
library(tidyverse)
gs4_deauth()

garden_coords <- read_sheet("https://docs.google.com/spreadsheets/d/1jg6TTJWZhzaUo2WvW30g3bHbNPA4RD5nNs8l0HNSiaM/edit?usp=sharing")

usethis::use_data(garden_coords, overwrite = TRUE)
