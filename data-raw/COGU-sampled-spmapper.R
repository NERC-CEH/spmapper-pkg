## load COGU.sampled.params.csv ##
###############################################

# get full path
COGU_sampled_path <- system.file("extdata",
                                 "COGU.sampled.params.csv",
                                 package = "spmapper")

# Read the CSV file
COGU_sampled_spmapper <- read.csv(COGU_sampled_path)
usethis::use_data(COGU_sampled_spmapper, overwrite = TRUE)
