#' Data from Lisa Lendway's backyard garden
#'
#' During the summer of 2020, Dr. Lisa Lendway decided it would be fun to collect data on the vegetables she harvested from her backyard garden, which she fondly calls the "jungle garden."  The rows represent the planting of a vegetable variety. There could be multiple rows for the same vegetable variety, if they were planted on the same day in different plots or on different days.
#'
#' @format A tibble with 93 rows and 7 variables:
#' \describe{
#'   \item{plot}{label of plot where vegetables were planted - see garden_coords dataset for more info}
#'   \item{vegetable}{type of vegetable planted}
#'   \item{variety}{variety of vegetable planted, usually according to the information on the seed package, but sometimes inferred by Lisa and sometimes unknown or reseeded from last year's plants}
#'   \item{number_seeds_planted}{the exact number or a guess at how many seeds/plants were planted}
#'   \item{date}{date the vegetable was planted}
#'   \item{number_seeds_exact}{if number_sseds_planted is exact, this is TRUE; if it was a guess, then this is FALSE}
#'   \item{notes}{mostly missing but intially created just in case}
#' }
#' @source Manually collected by Lisa Lendway, initially in a Google sheet.
"garden_planting"
