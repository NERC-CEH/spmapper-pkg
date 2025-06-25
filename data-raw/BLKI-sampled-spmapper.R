## load BLKI.sampled.params.csv ##
###############################################

# get full path
BLKI_sampled_path <- system.file("extdata",
                                 "BLKI.sampled.params.csv",
                                 package = "spmapper")

# Read the CSV file
BLKI_sampled_spmapper <- read.csv(BLKI_sampled_path)
usethis::use_data(BLKI_sampled_spmapper, overwrite = TRUE)
