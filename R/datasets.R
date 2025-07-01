#' Seabirds Energetics Parameters
#'
#' This dataset contains information on key behavioural and physiological traits of the three focal species of seabirds: Common guillemot Uria aalge;
#' Razorbill Alca torda; and Black-legged kittiwake Rissa tridactyla.
#' These data describe the daily time allocation to and energetic costs of core activities and other energetically important processes and species traits.
#' These data are used by the spmapper() function to estimate the mass of prey taken by an individual breeding adult of each species.
#'
#' @format A data frame with 25 rows and 4 variables:
#' \describe{
#'   \item{parameter}{Character Parameter name}
#'   \item{Guillemot}{Numeric Parameter values for Guillemot}
#'   \item{Razorbill}{Numeric Parameter values for Razorbill}
#'   \item{Kittiwake}{Numeric Parameter values for Kittiwake}
#' }
#' @source Published dataset: Leedham, O.; Searle, K.R.; Harris, M.P.; Newell, M.; Wanless, S.; Mobbs, D.C.; Butler, A.; Daunt, F. (2025). Time-activity budgets and energetics of common guillemot, razorbill, Atlantic puffin, and black-legged kittiwake. NERC EDS Environmental Information Data Centre. https://doi.org/10.5285/07b1105a-4a14-47e3-b491-9af59be90aff
"Seabird_energetics_pars_spmapper"

#' Razorbill sampled parameters
#'
#' This dataset contains information about,...
#'
#' @format A data frame with 60000 rows and 17 variables:
#' \describe{
#'   \item{\code{TB_nest}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_flying}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_resting_sea}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_foraging}}{double COLUMN_DESCRIPTION}
#'   \item{\code{BS_length}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{ER_foraging}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_flying}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_resting_sea}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_nest}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_warming_food}}{double COLUMN_DESCRIPTION}
#'   \item{\code{chicks_n}}{double COLUMN_DESCRIPTION}
#'   \item{\code{chick_ER}}{double COLUMN_DESCRIPTION}
#'   \item{\code{assim_effic}}{double COLUMN_DESCRIPTION}
#'   \item{\code{init_mass}}{double COLUMN_DESCRIPTION}
#'   \item{\code{mass_change}}{double COLUMN_DESCRIPTION}
#'   \item{\code{tissue_en_dens}}{double COLUMN_DESCRIPTION}
#'   \item{\code{energy_prey_conv}}{double COLUMN_DESCRIPTION}
#' }
#' @source NEED EXPL
"RAZO_sampled_spmapper"

#' Common Guillemot sampled parameters
#'
#' This dataset contains information about,...
#'
#' @format A data frame with 60000 rows and 17 variables:
#' \describe{
#'   \item{\code{TB_nest}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_flying}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_resting_sea}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_foraging}}{double COLUMN_DESCRIPTION}
#'   \item{\code{BS_length}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{ER_foraging}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_flying}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_resting_sea}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_nest}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_warming_food}}{double COLUMN_DESCRIPTION}
#'   \item{\code{chicks_n}}{double COLUMN_DESCRIPTION}
#'   \item{\code{chick_ER}}{double COLUMN_DESCRIPTION}
#'   \item{\code{assim_effic}}{double COLUMN_DESCRIPTION}
#'   \item{\code{init_mass}}{double COLUMN_DESCRIPTION}
#'   \item{\code{mass_change}}{double COLUMN_DESCRIPTION}
#'   \item{\code{tissue_en_dens}}{double COLUMN_DESCRIPTION}
#'   \item{\code{energy_prey_conv}}{double COLUMN_DESCRIPTION}
#'}
#' @source NEED EXPL
"COGU_sampled_spmapper"


#' Kittiwake sampled parameters
#'
#' A dataset containing information on:
#'
#' @format A data frame with 60000 rows and 17 variables:
#' \describe{
#'   \item{\code{TB_nest}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{TB_flying}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_resting_sea}}{double COLUMN_DESCRIPTION}
#'   \item{\code{TB_foraging}}{double COLUMN_DESCRIPTION}
#'   \item{\code{BS_length}}{integer COLUMN_DESCRIPTION}
#'   \item{\code{ER_foraging}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_flying}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_resting_sea}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_nest}}{double COLUMN_DESCRIPTION}
#'   \item{\code{ER_warming_food}}{double COLUMN_DESCRIPTION}
#'   \item{\code{chicks_n}}{double COLUMN_DESCRIPTION}
#'   \item{\code{chick_ER}}{double COLUMN_DESCRIPTION}
#'   \item{\code{assim_effic}}{double COLUMN_DESCRIPTION}
#'   \item{\code{init_mass}}{double COLUMN_DESCRIPTION}
#'   \item{\code{mass_change}}{double COLUMN_DESCRIPTION}
#'   \item{\code{tissue_en_dens}}{double COLUMN_DESCRIPTION}
#'   \item{\code{energy_prey_conv}}{double COLUMN_DESCRIPTION}
#'}
#' @source  NEED EXPL
"BLKI_sampled_spmapper"

#' Fame population
#'
#' A dataset containing information on:
#'
#' @format A data frame with 9 rows and 3 variables:
#' \describe{
#'   \item{\code{spp}}{character Species}
#'   \item{\code{estimate}}{character Estimate level}
#'   \item{\code{value}}{integer Population estimate}
#'}
#' @source NEED EXPL # <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
"fame_population_spmapper"

#' FAME-UD-standardised-RAZO-spmapper
#'
#' A dataset containing information on:
#'
#' The object contains a matrix of UD values and associated spatial metadata, to build a raster
#'
#' @format A list with two elements:
#' \describe{
#'   \item{matrix}{A numeric matrix of UD values with 462,392 rows and 1 column (with bird species code).
#'   \item{metadata}{A list of 7 elements describing spatial extent and resolution:
#'     \describe{
#'       \item{n_rows}{Number of raster rows}
#'       \item{n_cols}{Number of raster columns}
#'       \item{x_min}{Minimum X coordinate}
#'       \item{x_max}{Maximum X coordinate}
#'       \item{y_min}{Minimum Y coordinate}
#'       \item{y_max}{Maximum Y coordinate}
#'       \item{crs}{Coordinate reference system as WKT or PROJ string}
#'     }
#'   }
#' }
#' @source NEED EXPL
"FAME_UD_standardised_RAZO"


#' FAME-UD-standardised-COGU-spmapper
#'
#' A dataset containing information on:
#'
#' The object contains a matrix of UD values and associated spatial metadata, to build a raster
#'
#' @format A list with two elements:
#' \describe{
#'   \item{matrix}{A numeric matrix of UD values with 462,392 rows and 1 column (with bird species code).
#'   \item{metadata}{A list of 7 elements describing spatial extent and resolution:
#'     \describe{
#'       \item{n_rows}{Number of raster rows}
#'       \item{n_cols}{Number of raster columns}
#'       \item{x_min}{Minimum X coordinate}
#'       \item{x_max}{Maximum X coordinate}
#'       \item{y_min}{Minimum Y coordinate}
#'       \item{y_max}{Maximum Y coordinate}
#'       \item{crs}{Coordinate reference system as WKT or PROJ string}
#'     }
#'   }
#' }
#' @source NEED EXPL
"FAME_UD_standardised_COGU"

#' FAME-UD-standardised-BLKI-spmapper
#'
#' A dataset containing information on:
#'
#' The object contains a matrix of UD values and associated spatial metadata, to build a raster
#'
#' @format A list with two elements:
#' \describe{
#'   \item{matrix}{A numeric matrix of UD values with 462,392 rows and 1 column (with bird species code).
#'   \item{metadata}{A list of 7 elements describing spatial extent and resolution:
#'     \describe{
#'       \item{n_rows}{Number of raster rows}
#'       \item{n_cols}{Number of raster columns}
#'       \item{x_min}{Minimum X coordinate}
#'       \item{x_max}{Maximum X coordinate}
#'       \item{y_min}{Minimum Y coordinate}
#'       \item{y_max}{Maximum Y coordinate}
#'       \item{crs}{Coordinate reference system as WKT or PROJ string}
#'     }
#'   }
#' }
#' @source NEED EXPL
"FAME_UD_standardised_BLKI"
