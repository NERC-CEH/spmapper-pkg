# guidance and notes on spmapper installation and running

# all data is on datalabs
# https://datalab.datalabs.ceh.ac.uk/resource/ecowings/spmapper/
# spmapper
# last extracted 16/06/2025, 11.30am

# moved the scripts from R to inst>scripts
#############################

# run devtools & roxygen
library(devtools)
# devtools::install_github("klutometis/roxygen")
library(roxygen2)

# run this in the console with the path you have chosen it will create and open a new project, even if the
# folder doesn't eist
create_package("N:/ecowings")
# this spmapper folder is an R source package and a Rstudio project
# we now make a git repository
use_git()

# add your functions to the R folder as .R files

# document dependencies by adding required libraries in the DESCRIPTION file, e.g.
# Imports:
#sf,
#terra

# info
# https://r-pkgs.org/whole-game.html
# https://tinyheero.github.io/jekyll/update/2015/07/26/making-your-first-R-package.html

# once the documentation is completed within each function file e.g.
# @title @params, etc
# run the below to generate .rd files for each function in the main folder
# You will get one .Rd file for each function in your R package.
devtools::document()

# Making Raw Data Available within the package
# Example data for example
# load them in the folder inst/extdata
# North sea polygon, UKSPA and UK_OWF_polygons_by_status in inst/demo as folders
# make sure the names of the files don't have spaces or special chars
# perhaps rename text files to ...._metadata
# once the package is installed the data can be accessed with system.file
# e.g. system.file("extdata", "fame_population_ests.csv", package = "spmapper")

# Data should go in inst/extdata

# testing package
# usethis::use_testthat(3)
#https://r-pkgs.org/testing-basics.html

# you can create extra folder "demo" to store files used by vignette within "inst"

# documentation goes in vignettes, same for spmapper-worked-example

#######################################
# installing the package
#######################################
# if we have
#Our functions (.R files) the R folder
#Documentation (.Rd) files in in the man folder
#Data (binary and/or raw) in the data and inst/extdata
# we should be good to go


# make sure each R function file has export at the beggining. e.g.

## ########################################
#' @title TO BE ADDED - TITLE OF MAIN SPMAPPER FUNCTION
#' @description TO BE ADDED - OVERALL DESCRIPTION OF WHAT SPMAPPER DOES
#' @param spname Species name: a character string. Must be "Guillemot", "Kittiwake" or "Razorbill"
#' @param fppolys Footprint(s): a simple feature collection
#' @param popscen Population scenario: a character string. Must be "baseline", "low" or "high"
#' @param tooldir Path to directory containing tool: a character string.
#' @return A list, with elements: "spname" (species name), "popscen" (population scenario"), "energypars_base_est" (energetics parameters - estimates), "energypars_base_sim" (energetics parameters - simulations), "udmap" (utilisation distribution, a raster), "popsize" (population size - BREEDING PAIRS **TBC**, "fp_ud_overlap" (proportion of UD within a footprint), "nbirds_in_fp" (number of birds in footprints), "onebird_prey_est" (prey intake from one bird - estimate), "onebird_prey_sim" (prey intake from one bird - simulations), "allbirds_prey_est" (prey intake from all birds in footprints - estimate), "allbirds_prey_sim" (prey intake from all birds in footprints - simulations)
#' @export

# after changes
devtools::build()
# Creates a “tarball” (.tar.gz), which is the format used for sharing and submitting packages around like on CRAN.
# But basically, when doing so, it ensures the package is structured correctly.

# not sure if devtools::build() is interchangeable with the below as it also creates a vignette folder
# but maybe not a template introduction.Rmd?
# and vignette for creating page on github
#usethis::use_vignette("introduction")

# if ready, install the package in your R system library
devtools::install()
# then load it
library(spmapper)

# render the vignettes
# GitHub won’t directly render the .html file, but you can use the GitHub HTML Preview service.
# Basically, you just give it the url of your html file from your GitHub and it will render it.
# http://htmlpreview.github.io/

# when testing introduction.Rmd choose knit to hmtl vignette NOT RUN

# check that the function works by running ?spmapper for example
?spmapper
?fn.tot.prey
spmapper()

# errors:

#in functions_spmapper.R for the example data it leads you to "Data" but it should be inst/extdata

# file_popsize <- file.path(tooldir, "Data", "fame_population_ests.csv")
# repleace this (and similar files) with:
# file_udmap <- system.file("extdata", paste0("FAME_UD_standardised_", "BLKI", ".tif"), package = "spmapper")

# exception:
file_energypars_sim <- file.path(tooldir, "Data", paste(spcode, "sampled", "params", "csv", sep="."))
# to:
file_energypars_sim <- system.file(
  tooldir, # previously it was "extdata", but this would make it hardcoded
  paste(spcode, "sampled", "params", "csv", sep = "."),
  package = "mypkg"
)

# if pkg is corrupted unlink it
unlink("C:/Users/clacap/AppData/Local/R/win-library/4.4/ecowings", recursive = TRUE, force = TRUE)
# or manually remove it by browsing to it
# clean
devtools::clean_dll()
# and try reinstalling

# for visualising plots and charts use this:
#```{r, fig.width=8, fig.height=8}


# to create repo
# open gitbash and navigate to pkg folder
# type git init # SKIP THIS IF YOU HAVE ALREADY CREATED IT
# add files to git repo (after it confirms creation): git add .
# git commit -m "date, initials: my description of changes"


# IGNORE THIS LINE BELOW IF REPO ALREADY EXISTS ######
# git remote add origin https://github.com/NERC-CEH/ecowings-Rpkg.git
#########################################


##### if doing major edit use another branch
# git push -u origin branchnamehere
# git push -u origin master # back to master branch
# create a branch/change locally e.g. a branch called test will be created
# git checkout -b test
# to go back to master branch.
# remember to edit the .gitignore file to add files in the ignore folder
# you don't want to be uploaded
# git checkout master

# if simple edits just use
# git push -u origin master


#####################################
# final checks of package
devtools::check()

# for testing create a token (if don't have it already) on github
# https://github.com/settings/tokens

#Click "Classic token" (for devtools, classic tokens are easier)

# Select scopes:  repo (for private repo access)
# Copy and save the token.

# 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
Sys.setenv(GITHUB_PAT = "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")
# test package installation from github
devtools::install_github("NERC-CEH/spmapper-pkg")


# or even better

devtools::install_github("NERC-CEH/spmapper-pkg", auth_token = "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")

# pending:
# DESCRIPTION NEEDS TO BE UPDATED, See SEABORD
# also how does the vignette package is called?

# build package site

library(pkgdown)

# remove former contents in docs:
pkgdown::clean_site(force = TRUE)
pkgdown::build_site()
build_favicons(pkg = ".", overwrite = FALSE)
# this will create a website for the package in docs folder

# use pkgdown to add logos (it will find them in pkgdown/favicon)


# for every file, (e.g. a csv in ext data, create an R file
# to put in a folder called data-raw)

# generate a metadata skeleton for dataset
#sinew::makeOxygen(Seabird_energetics_pars_spmapper)
