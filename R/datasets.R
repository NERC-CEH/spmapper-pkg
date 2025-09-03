#' Seabirds Energetics Parameters
#'
#' This dataset contains information on key behavioural and physiological traits of the three focal species of seabirds: Common guillemot Uria aalge;
#' Razorbill Alca torda; and Black-legged kittiwake Rissa tridactyla.
#' These data describe the daily time allocation to and energetic costs of core activities and other energetically important processes and species traits.
#' These data are used by the spmapper() function to estimate the mass of prey taken by an individual breeding adult of each species. See Leedham et al. (2025) for full details of data sourcing.
#'
#' @format A data frame with 25 rows and 4 variables:
#' \describe{
#'   \item{parameter}{Character Parameter name}
#'   \item{Guillemot}{Numeric Parameter value for Guillemot}
#'   \item{Razorbill}{Numeric Parameter value for Razorbill}
#'   \item{Kittiwake}{Numeric Parameter value for Kittiwake}
#' }
#' @source Published dataset: Leedham, O.; Searle, K.R.; Harris, M.P.; Newell, M.; Wanless, S.; Mobbs, D.C.; Butler, A.; Daunt, F. (2025). Time-activity budgets and energetics of common guillemot, razorbill, Atlantic puffin, and black-legged kittiwake. NERC EDS Environmental Information Data Centre. https://doi.org/10.5285/07b1105a-4a14-47e3-b491-9af59be90aff
"Seabird_energetics_pars_spmapper"

#' Razorbill sampled parameters
#'
#' This dataset contains random deviate samples of Razorbill energetics & behavioural parameters, based on 'Seabird_energetics_pars_spmapper'. Each row represent a set of parameter values used by the prey consumption model.  See methods for details.
#'
#' @format A data frame with 60000 rows and 17 variables:
#' \describe{
#'   \item{\code{TB_nest}}{double Time-activity budget: nest}
#'   \item{\code{TB_flying}}{double Time-activity budget: flight}
#'   \item{\code{TB_resting_sea}}{double Time-activity budget: rest-at-sea}
#'   \item{\code{TB_foraging}}{double Time-activity budget: foraging}
#'   \item{\code{BS_length}}{integer Number of days chick-rearing}
#'   \item{\code{ER_foraging}}{double Energetic cost: foraging}
#'   \item{\code{ER_flying}}{double Energetic cost: flight}
#'   \item{\code{ER_resting_sea}}{double Energetic cost: rest at sea}
#'   \item{\code{ER_nest}}{double Energetic cost: nest}
#'   \item{\code{ER_warming_food}}{double Energetic cost: warming food}
#'   \item{\code{chicks_n}}{double Number of chicks}
#'   \item{\code{chick_ER}}{double Daily chick energetic requirement}
#'   \item{\code{assim_effic}}{double Digestive assimilation efficiency}
#'   \item{\code{init_mass}}{double Initial adult body mass}
#'   \item{\code{mass_change}}{double Breeding season change in adult body mass}
#'   \item{\code{tissue_en_dens}}{double Adult seabird tissue energy density}
#'   \item{\code{energy_prey_conv}}{double Prey energy density}
#' }
#' @source Randomly sampled deviates of parameters from 'Seabird_energetics_pars_spmapper'. See methods for details.
"RAZO_sampled_spmapper"

#' Common Guillemot sampled parameters
#'
#' This dataset contains random deviate samples of Guillemot energetics & behavioural parameters, based on 'Seabird_energetics_pars_spmapper'. Each row represent a set of parameter values used by the prey consumption model. See methods for details.
#'
#' @format A data frame with 60000 rows and 17 variables:
#' \describe{
#'   \item{\code{TB_nest}}{double Time-activity budget: nest}
#'   \item{\code{TB_flying}}{double Time-activity budget: flight}
#'   \item{\code{TB_resting_sea}}{double Time-activity budget: rest-at-sea}
#'   \item{\code{TB_foraging}}{double Time-activity budget: foraging}
#'   \item{\code{BS_length}}{integer Number of days chick-rearing}
#'   \item{\code{ER_foraging}}{double Energetic cost: foraging}
#'   \item{\code{ER_flying}}{double Energetic cost: flight}
#'   \item{\code{ER_resting_sea}}{double Energetic cost: rest at sea}
#'   \item{\code{ER_nest}}{double Energetic cost: nest}
#'   \item{\code{ER_warming_food}}{double Energetic cost: warming food}
#'   \item{\code{chicks_n}}{double Number of chicks}
#'   \item{\code{chick_ER}}{double Daily chick energetic requirement}
#'   \item{\code{assim_effic}}{double Digestive assimilation efficiency}
#'   \item{\code{init_mass}}{double Initial adult body mass}
#'   \item{\code{mass_change}}{double Breeding season change in adult body mass}
#'   \item{\code{tissue_en_dens}}{double Adult seabird tissue energy density}
#'   \item{\code{energy_prey_conv}}{double Prey energy density}
#' }
#' @source Randomly sampled deviates of parameters from 'Seabird_energetics_pars_spmapper'. See methods for details.
"COGU_sampled_spmapper"


#' Kittiwake sampled parameters
#'
#' This dataset contains random deviate samples of Kittiwake energetics & behavioural parameters, based on 'Seabird_energetics_pars_spmapper'. Each row represent a set of parameter values used by the prey consumption model. See methods for details.
#'
#' @format A data frame with 60000 rows and 17 variables:
#' \describe{
#'   \item{\code{TB_nest}}{double Time-activity budget: nest}
#'   \item{\code{TB_flying}}{double Time-activity budget: flight}
#'   \item{\code{TB_resting_sea}}{double Time-activity budget: rest-at-sea}
#'   \item{\code{TB_foraging}}{double Time-activity budget: foraging}
#'   \item{\code{BS_length}}{integer Number of days chick-rearing}
#'   \item{\code{ER_foraging}}{double Energetic cost: foraging}
#'   \item{\code{ER_flying}}{double Energetic cost: flight}
#'   \item{\code{ER_resting_sea}}{double Energetic cost: rest at sea}
#'   \item{\code{ER_nest}}{double Energetic cost: nest}
#'   \item{\code{ER_warming_food}}{double Energetic cost: warming food}
#'   \item{\code{chicks_n}}{double Number of chicks}
#'   \item{\code{chick_ER}}{double Daily chick energetic requirement}
#'   \item{\code{assim_effic}}{double Digestive assimilation efficiency}
#'   \item{\code{init_mass}}{double Initial adult body mass}
#'   \item{\code{mass_change}}{double Breeding season change in adult body mass}
#'   \item{\code{tissue_en_dens}}{double Adult seabird tissue energy density}
#'   \item{\code{energy_prey_conv}}{double Prey energy density}
#' }
#' @source  Randomly sampled deviates of parameters from 'Seabird_energetics_pars_spmapper'. See methods for details.
"BLKI_sampled_spmapper"


#' Fame population
#'
#' A dataset containing UK seabird population size estimates for breeding population size of focal seabird species. A full national census (Seabird 2000) is available for the period 1998-2002, whereas colony counts for a subset of colonies are available for the period 2010-2014 via the Seabird Monitoring Programme (SMP). We used both datasets to derive an estimate of national-level abundance for the period 2010-2014. See methods for further details.
#'
#' @format A data frame with 3 rows and 2 variables:
#' \describe{
#'   \item{\code{spp}}{character Species}
#'   \item{\code{value}}{integer Breeding population size estimate}
#'}
#' @source See methods for details.
"fame_population_spmapper"



#' FAME-UD-standardised-RAZO-spmapper
#'
#' Uk-Ireland utilisation distribution (UD) for Razorbill (Future of the Atlantic Marine Environment FAME study period; 2010-2014). Via RSPB; for methods, see Wakefi#'
#' The object contains a matrix of UD values and associated spatial metadata, to build a raster
#'
#' @format A list with two elements:
#' \describe{
#'   \item{matrix}{A numeric matrix of UD values with 462,392 rows and 1 column (with bird species code).}
#'   \item{metadata}{A list of 7 elements describing spatial extent and resolution:
#'     \describe{
#'       \item{n_rows}{Number of raster rows}
#'       \item{n_cols}{Number of raster columns}
#'       \item{x_min}{Minimum X coordinate}
#'       \item{x_max}{Maximum X coordinate}
#'       \item{y_min}{Minimum Y coordinate}
#'       \item{y_max}{Maximum Y coordinate}
#'       \item{crs}{Coordinate reference system as WKT or PROJ string}
#'      }
#'    }
#'  }
#' @source Wakefield, E.D., Owen, E., Baer, J., Carroll, M.J., Daunt, F., Dodd, S.G., Green, J.A., Guilford, T., Mavor, R.A., Miller, P.I. and Newell, M.A., 2017. Breeding density, fine‐scale tracking, and large‐scale modeling reveal the regional distribution of four seabird species. Ecological Applications, 27(7), pp.2074-2091.
"FAME_UD_standardised_RAZO"


#' FAME-UD-standardised-COGU-spmapper
#'
#' Uk-Ireland utilisation distribution (UD) for Common Guillemot (Future of the Atlantic Marine Environment FAME study period; 2010-2014). Via RSPB; for methods, see Wakefield et al. (2027), Ecological Applications.
#'
#' The object contains a matrix of UD values and associated spatial metadata, to build a raster
#'
#' @format A list with two elements:
#' \describe{
#'   \item{matrix}{A numeric matrix of UD values with 462,392 rows and 1 column (with bird species code).}
#'   \item{metadata}{A list of 7 elements describing spatial extent and resolution:
#'     \describe{
#'       \item{n_rows}{Number of raster rows}
#'       \item{n_cols}{Number of raster columns}
#'       \item{x_min}{Minimum X coordinate}
#'       \item{x_max}{Maximum X coordinate}
#'       \item{y_min}{Minimum Y coordinate}
#'       \item{y_max}{Maximum Y coordinate}
#'       \item{crs}{Coordinate reference system as WKT or PROJ string}
#'      }
#'    }
#'  }
#' @source Wakefield, E.D., Owen, E., Baer, J., Carroll, M.J., Daunt, F., Dodd, S.G., Green, J.A., Guilford, T., Mavor, R.A., Miller, P.I. and Newell, M.A., 2017. Breeding density, fine‐scale tracking, and large‐scale modeling reveal the regional distribution of four seabird species. Ecological Applications, 27(7), pp.2074-2091.
"FAME_UD_standardised_COGU"


#' FAME-UD-standardised-BLKI-spmapper
#'
#' Uk-Ireland utilisation distribution (UD) for Black-legged Kittiwake (Future of the Atlantic Marine Environment FAME study period; 2010-2014). Via RSPB; for methods, see Wakefi
#' The object contains a matrix of UD values and associated spatial metadata, to build a raster
#'
#' @format A list with two elements:
#' \describe{
#'   \item{matrix}{A numeric matrix of UD values with 462,392 rows and 1 column (with bird species code).}
#'   \item{metadata}{A list of 7 elements describing spatial extent and resolution:
#'     \describe{
#'       \item{n_rows}{Number of raster rows}
#'       \item{n_cols}{Number of raster columns}
#'       \item{x_min}{Minimum X coordinate}
#'       \item{x_max}{Maximum X coordinate}
#'       \item{y_min}{Minimum Y coordinate}
#'       \item{y_max}{Maximum Y coordinate}
#'       \item{crs}{Coordinate reference system as WKT or PROJ string}
#'      }
#'    }
#'  }
#' @source Wakefield, E.D., Owen, E., Baer, J., Carroll, M.J., Daunt, F., Dodd, S.G., Green, J.A., Guilford, T., Mavor, R.A., Miller, P.I. and Newell, M.A., 2017. Breeding density, fine‐scale tracking, and large‐scale modeling reveal the regional distribution of four seabird species. Ecological Applications, 27(7), pp.2074-2091.
"FAME_UD_standardised_BLKI"
