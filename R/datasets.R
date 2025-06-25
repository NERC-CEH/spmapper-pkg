#' Seabirds Energetics Parameters
#'
#' This dataset provides information about :
#' @format A data frame with the following 4 columns:
#' \describe{
#'   \item{parameter}{Character: ...}
#'   \item{Guillemot}{Numeric: ...}
#'   \item{Razorbill}{Numeric: ...}
#'   \item{Kittiwake}{Numeric: ...}
#' }
#' @source NEED EXPL
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
#'   \item{\code{spp}}{character COLUMN_DESCRIPTION}
#'   \item{\code{estimate}}{character COLUMN_DESCRIPTION}
#'   \item{\code{value}}{integer COLUMN_DESCRIPTION}
#'}
#' @source NEED EXPL
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
