## load Seabird_energetics_pars_spmapper.csv ##
###############################################

# get full path
seabird_energetics_path <- system.file("extdata",
                             "Seabird_energetics_pars_spmapper.csv",
                             package = "spmapper")

# Read the CSV file
Seabird_energetics_pars_spmapper <- read.csv(seabird_energetics_path)
usethis::use_data(Seabird_energetics_pars_spmapper, overwrite = TRUE)
str(Seabird_energetics_pars_spmapper)
