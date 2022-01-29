#' Data from Lisa Lendway's backyard garden
#'
#' See documentation for the garden_harvest dataset for more detail. Each row is a "harvest" of a particular vegetable variety. So, each time she harvested a particular vegetable/variety combination, she weighed the entire harvest. There could be multiple harvests of a vegetable/variety combination in a single day. There are two exceptions: all pumpkin and winter squash (vegetable = "squash") were weighed individually.
#'
#' @format A tibble with 726 rows and 5 variables:
#' \describe{
#'   \item{vegetable}{type of vegetable harvested}
#'   \item{variety}{variety of vegetable harvested, usually according to the information on the seed package, but sometimes inferred by Lisa and sometimes unknown or reseeded from last year's plants}
#'   \item{date}{date the vegetable was harvested}
#'   \item{weight}{weight harvested in grams}
#'   \item{units}{all "grams" - this variable was originally created in case larger vegetables were weighed in other units but there was no need}
#' }
#' @source Manually collected by Lisa Lendway, initially in a Google sheet.
"harvest_2021"
