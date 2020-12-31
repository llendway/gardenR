#' Data from Lisa Lendway's backyard garden
#'
#' During the summer of 2020, Dr. Lisa Lendway decided it would be fun to collect data on the vegetables she harvested from her backyard garden, which she fondly calls the "jungle garden."  This dataset summarizes how much was spent on gardening materials.
#' @format A tibble with 781 rows and 5 variables:
#' \describe{
#'   \item{vegetable}{type of vegetable seed/plant OR other supply type, ie. dirt}
#'   \item{variety}{variety of vegetable seed/plant OR further description of other product}
#'   \item{brand}{brand of seed or plant}
#'   \item{eggplant_item_number}{item number of item at Eggplant, the store where most of the seeds were purchased}
#'   \item{price}{raw price - no taxes}
#'   \item{price_with_tax}{price with taxes}
#' }
#' @source Manually collected by Lisa Lendway, initially in a Google sheet.
"garden_spending"
