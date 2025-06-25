## load fame_population_ests.csv ##
###############################################

# get full path
fame_population_path <- system.file("extdata",
                                 "fame_population_ests.csv",
                                 package = "spmapper")

# Read the CSV file
fame_population_spmapper <- read.csv(fame_population_path)
usethis::use_data(fame_population_spmapper, overwrite = TRUE)
