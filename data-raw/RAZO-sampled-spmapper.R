## load RAZO.sampled.params.csv ##
###############################################

# get full path
RAZO_sampled_path <- system.file("extdata",
                                       "RAZO.sampled.params.csv",
                                       package = "spmapper")

# Read the CSV file
RAZO_sampled_spmapper <- read.csv(RAZO_sampled_path)
usethis::use_data(RAZO_sampled_spmapper, overwrite = TRUE)
