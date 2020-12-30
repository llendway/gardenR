
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gardenR <img src='man/figures/logo.png' align="right" height="139" />

The `gardenR` package contains data collected by Lisa Lendway from her
vegetable garden in the summer of 2020. The data were used in her
Introduction to Data Science course at Macalester College to introduce
many concepts. For examples, see the [tutorials for the
course](https://ds112-lendway.netlify.app/).

If you’d like a visual tour of the garden, check it out:

<iframe width="560" height="315" src="https://www.youtube.com/embed/iGMgLFIiSxo" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>

</iframe>

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("llendway/gardenR")
```

## Example

Here is one example plot

``` r
library(gardenR)
library(tidyverse)

garden_harvest %>% 
  filter(vegetable == "tomatoes") %>% 
  group_by(date) %>% 
  summarize(daily_wt_g = sum(weight)) %>% 
  ggplot(aes(x = date, y = daily_wt_g)) +
  geom_point(color = "darkred") +
  geom_line(color = "darkred") +
  labs(title = "2020 daily tomato harvest (g)",
       x = "",
       y = "") +
  theme_minimal()
```

<img src="man/figures/README-example-1.png" width="100%" />
