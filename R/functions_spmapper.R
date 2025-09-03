## ########################################
#' @title spmapper core function. Generate prey consumption maps and perform extractions within user-supplied polygons.
#' @description Produces prey consumption maps and extracts of prey mass values within user-specified spatial polygons. Returns list of various inputs, intermediate quantities, prey consumption maps and extraction totals.
#' @param spname Species name: a character string. Must be "Guillemot", "Kittiwake" or "Razorbill"
#' @param fppolys Footprint(s): a simple feature collection
#' @param tooldir Path to directory containing tool: a character string.
#' @return A list, with elements: "spname" (species name), "energypars_base_est" (energetics parameters - estimates), "energypars_base_sim" (energetics parameters - simulations), "udmap" (utilisation distribution, a raster), "popsize" (population size - number of individual breeding adults), "fp_ud_overlap" (proportion of UD within polygons/footprints), "onebird_prey_kg_est" (chick-rearing prey intake mass from one bird - estimate), "onebird_prey_kg_sim" (chick-rearing prey intake mass from one bird - simulations), "allbirds_prey_est" (prey intake mass from all birds - estimate),  "allbirds_prey_sim" (prey intake from all birds - simulations), "allbirds_prey_fp_est" (prey mass in footprints - estimate),  "allbirds_prey_sim" (prey mass in footprints - simulations), "prey_cons_map" (prey consumption map - a raster)
#' @importFrom utils read.csv
#' @export



spmapper <- function(spname, fppolys, tooldir){

  ## ################################
  ## 1. Get four letter species code

  spcodes <- c("Kittiwake" = "BLKI", "Guillemot" = "COGU", "Razorbill" = "RAZO")

  if(! any(spname == names(spcodes))){ stop("Invalid species name: must be 'Kittiwake', 'Guillemot' or 'Razorbill'!") }

  spcode <- as.character(spcodes[which(names(spcodes) == spname)])

  ## #################################
  ## 2. Load population size data

  file_popsize <- file.path(tooldir,
                            "fame_population_ests.csv")

  popsizes <- read.csv(file_popsize)

  popsize <- popsizes$value[popsizes$spp == spcode]

  ## ################################
  ## 3. Load data - energetics parameters - estimates

  file_energypars_est <- file.path(tooldir,
                                   "Seabird_energetics_pars_spmapper.csv")

  energypars_base_est <- read.csv(file_energypars_est)

  my_param <- energypars_base_est$parameter

  ww <- which(colnames(energypars_base_est) == spname)

  energypars_base_est <- data.frame(as.list(energypars_base_est[,ww]))

  names(energypars_base_est) <- my_param

  ## kable(t(energypars_base_est))

  ## ################################
  ## 4. Load dat - energetic parameters - simulations (capturing uncertainty)

  file_energypars_sim <- file.path(
    tooldir,
    paste(spcode, "sampled", "params", "csv", sep = ".")
  )

  energypars_base_sim <- read.csv(file_energypars_sim)

  energypars_base_sim$init_mass_sd <- energypars_base_est$init_mass_sd ## fix missing values

  energypars_base_sim$chicks_n[energypars_base_sim$chicks_n < 0.01] <- 0.01

  ## kable(round(t(apply(energypars_base_sim, 2, summary)), 2))

  ## ################################
  ## 5. Load species-level UD

  file_udmap <- file.path(
    tooldir,
    paste0("FAME_UD_standardised_", spcode, ".tif")
  )

  udmap <- terra::rast(file_udmap)

  terra::crs(udmap) <- '+proj=laea +lat_0=-7.947 +lon_0=-14.30 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84 +units=m +no_defs +towgs84=0,0,0'

  ## #################################
  ## 6. Proportion of UD within polygons

  fp_ud_overlap <- fpudoverlap(fppolys = fppolys, udmap = udmap)


  ## #################################
  ## 7. Prey calculation - estimates and simulations

  onebird_prey_kg_est <- fn.tot.prey(
    TB_foraging = energypars_base_est$TB_foraging,
    TB_flying = energypars_base_est$TB_flying,
    TB_resting_sea = energypars_base_est$TB_resting_sea,
    TB_nest = energypars_base_est$TB_nest,
    ER_foraging = energypars_base_est$ER_foraging,
    ER_flying = energypars_base_est$ER_flying,
    ER_resting_sea = energypars_base_est$ER_resting_sea,
    ER_nest = energypars_base_est$ER_nest,
    ER_warming_food = energypars_base_est$ER_warming_food,
    chick_ER = energypars_base_est$chick_ER,
    chicks_n = energypars_base_est$chicks_n,
    BS_length = energypars_base_est$BS_length,
    init_mass = energypars_base_est$init_mass,
    mass_change = energypars_base_est$mass_change,
    tissue_en_dens = energypars_base_est$tissue_en_dens,
    energy_prey_conv = energypars_base_est$energy_prey_conv,
    assim_effic = energypars_base_est$assim_effic)

  onebird_prey_kg_sim <- fn.tot.prey(
    TB_foraging = energypars_base_sim$TB_foraging,
    TB_flying = energypars_base_sim$TB_flying,
    TB_resting_sea = energypars_base_sim$TB_resting_sea,
    TB_nest = energypars_base_sim$TB_nest,
    ER_foraging = energypars_base_sim$ER_foraging,
    ER_flying = energypars_base_sim$ER_flying,
    ER_resting_sea = energypars_base_sim$ER_resting_sea,
    ER_nest = energypars_base_sim$ER_nest,
    ER_warming_food = energypars_base_sim$ER_warming_food,
    chick_ER = energypars_base_sim$chick_ER,
    chicks_n = energypars_base_sim$chicks_n,
    BS_length = energypars_base_sim$BS_length,
    init_mass = energypars_base_sim$init_mass,
    mass_change = energypars_base_sim$mass_change,
    tissue_en_dens = energypars_base_sim$tissue_en_dens,
    energy_prey_conv = energypars_base_sim$energy_prey_conv,
    assim_effic = energypars_base_sim$assim_effic)

  ## #################################
  ## 8. Total prey mass

  allbirds_prey_est <- popsize * onebird_prey_kg_est # baseline

  allbirds_prey_sim <- popsize * onebird_prey_kg_sim # simulated

  ## #################################
  ## 9. Prey mass in footprint fp

  allbirds_prey_fp_est <- allbirds_prey_est * fp_ud_overlap # baseline

  allbirds_prey_fp_sim <- allbirds_prey_sim * fp_ud_overlap # simulated


  ## #################################
  # 10 . Prey consumption map

  prey_cons_map <- udmap
  values(prey_cons_map) <- values(prey_cons_map) * (popsize * onebird_prey_kg_est/1000) # tonnes

  ## #################################
  ## 11. Output

  list(
    spname = spname,
    energypars_base_est = energypars_base_est,
    energypars_base_sim = energypars_base_sim,
    udmap = udmap,
    popsize = popsize,
    fp_ud_overlap = fp_ud_overlap,
    onebird_prey_kg_est = onebird_prey_kg_est,
    onebird_prey_kg_sim = onebird_prey_kg_sim,
    allbirds_prey_est = allbirds_prey_est,
    allbirds_prey_sim = allbirds_prey_sim,
    allbirds_prey_fp_est = allbirds_prey_fp_est,
    allbirds_prey_fp_sim = allbirds_prey_fp_sim,
    prey_cons_map = prey_cons_map # baseline prey consumption map
  )
}

## ########################################
