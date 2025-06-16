## ########################################
#' @title Function to calculate prey intake (kg) for one or more adults
#' @description fn.tot.prey represents a model that calculates the intake of prey (kg) of a single breeding adult seabird across the duration of chick rearing, based on a set of values describing their physiology, ecology and demography.
#' @details The function first calculates the daily energy requirements of an adult seabird, as the sum of:
#' i) a weighted average of the energetic costs of core 4 activities (foraging, flight, resting at sea, resting at the colony), according to time their relative daily time budget allocation.
#' ii) the cost of warming daily food load
#' iii) an adults half share of chick provisining requirements, multiplied by the average number of chicks per nest (breeding success)
#'
#' Daily energy requirements are then scaled for the duration of chick-rearing. Next, energy intake is corrected to account for energy sourced via the metabolism of body tissue (thus not from prey consumption; indicated by adult body mass change and seabird tissue energy density). Total energy energy intake is then converted into prey mass intake according to dietary prey energy density, correcting for imperfect digestive assimilation.
#'
#' Note, species is not explicitly specified in the function, rather the function is applied to a set of parameter values corresponding to a given species.
#'
#' Note: each argument can either be a single numeric value or a vector, but if a vector then all vectors must have the same length
#' @param TB_foraging Time budget: foraging: % of daily time-activity budget spent foraging 	(unit: % time)
#' @param TB_flying Time budget: flying: % of daily time-activity budget spent flying	(unit: % time)
#' @param TB_resting_sea Time budget: rest at sea	% of daily time-activity budget spent resting at sea	(unit: 	% time)
#' @param TB_nest Time budget: nest	% of daily time-activity budget spent at the nest	(unit: 	% time)
#' @param ER_foraging Energy requirements: foraging 	Energetic cost of a full day (24h) foraging	(unit: 	kj/day)
#' @param ER_flying Energy requirements: flying	Energetic cost of a full day (24h) flying	(unit: 	kj/day)
#' @param ER_resting_sea Energy requirements: rest at sea	Energetic cost of a full day (24h) resting at sea	(unit: 	kj/day)
#' @param ER_nest Energy requirements: nest	Energetic cost of a full day (24h) at the nest	(unit: 	kj/day)
#' @param ER_warming_food Energy requirements: warming food	Nominal energetic cost of warming food per day	(unit: 	kj/day)
#' @param chick_ER Energy requirements: chick provisioning	Daily energy needs of chicks (i.e. to be provisioned by parent birds)	(unit: 	kj/day	)
#' @param chicks_n Chicks per nest (breeding success):	Chicks fledged per nest, to give seasonal chick provisioning requirements	(unit: 	n	)
#' @param BS_length Chick-rearing duration: Duration of chick rearing	(unit: days)
#' @param init_mass Adult body mass:	Mass of a typical breeding adult	(unit: 	g)
#' @param mass_change Percent adult mass change:	Percentage change in adult body mass over breeding season	(unit: 	% change)
#' @param tissue_en_dens Adult tissue energy density	Energy density of seabird body tissue (adult)	(unit: 	kj/g)
#' @param energy_prey_conv Prey energy density	Energy density of prey in diet, used to convert energy intake into prey mass	(unit: 	kj/g)
#' @param assim_effic Digestive assimilation efficiency	Proportion of dietary prey energy assimilated by adult seabirds	(unit: 	proportion)
#' @return prey intake (kg) of a single breeding adult seabird for the duration of chick-rearing; if argument is a single numeric value then output is also a single numeric value, if arguments are vectors then a vector of the same length as the length of each input vector
#' @export

fn.tot.prey <- function(TB_foraging, TB_flying, TB_resting_sea, TB_nest, # 17 arguments
                        ER_foraging, ER_flying, ER_resting_sea, ER_nest, ER_warming_food,
                        chick_ER, chicks_n, BS_length,
                        init_mass, mass_change, tissue_en_dens,
                        energy_prey_conv, assim_effic){

  # Time budget unity check
  # Uses all.equal due to occasional floating point error
  ## AB: 25 Sep 2024: included "isTRUE()", and increased 'tolerance' to 0.2
  ## AB: 8 Oct 2024: changed "100" to "rep(100, TB_foraging)" to deal with possibility that all inputs are vectors

  TB_check <- isTRUE(all.equal(TB_foraging + TB_flying + TB_resting_sea + TB_nest, rep(100, length(TB_foraging)), tolerance=0.2))

  {if(TB_check){

    ## Adult daily energy requirements

    adult_DER <- (((TB_foraging/ 100) * ER_foraging) +
                    ((TB_flying/ 100) * ER_flying) +
                    ((TB_resting_sea/ 100) * ER_resting_sea) +
                    ((TB_nest/ 100) * ER_nest) +
                    ER_warming_food)

    ## Chick daily energy requirements

    chick_DER <-  chick_ER * chicks_n

    ## Total energy requirements across season

    total_DER_season <- (adult_DER + chick_DER) * BS_length

    ## Absolute mass change across the season

    abs_mass_change <- init_mass * (mass_change/100)

    ## Total energy intake
    ## 6 Oct 2024: AB: changed "-" to "+" and removed "abs()"
    energy_intake <- total_DER_season + (abs_mass_change * tissue_en_dens)

    ## Ratio to convert energy to prey

    rat_energy_prey <- energy_prey_conv * assim_effic *  1000

    ## Total prey intake

    tot_prey_intake <- energy_intake / rat_energy_prey
    tot_prey_intake
  }
    else {

      print("ERROR: Total Time Budget not equal to 100")
      print(paste0("TB = ", TB_foraging + TB_flying + TB_resting_sea + TB_nest))

      NA
    }}
}

## ########################################
