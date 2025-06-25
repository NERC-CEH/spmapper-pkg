## prepare `FAME_UD_standardised_RAZO.tif` dataset raster

FAME_UD_standardised_RAZO_r <- terra::rast(system.file("extdata",
                                                       "FAME_UD_standardised_RAZO.tif",
                                                       package = "spmapper"))

FAME_UD_standardised_RAZO_m <- terra::as.matrix(FAME_UD_standardised_RAZO_r)

terra::plot(FAME_UD_standardised_RAZO_r)

#save the metadata
nrows <- nrow(FAME_UD_standardised_RAZO_r)
ncols <- ncol(FAME_UD_standardised_RAZO_r)
xmin <- as.vector(terra::ext(FAME_UD_standardised_RAZO_r)[1])
xmax <- as.vector(terra::ext(FAME_UD_standardised_RAZO_r)[2])
ymin <- as.vector(terra::ext(FAME_UD_standardised_RAZO_r)[3])
ymax <- as.vector(terra::ext(FAME_UD_standardised_RAZO_r)[4])

# assign and stores crs
terra::crs(FAME_UD_standardised_RAZO_r) <- "EPSG:4326"
crs <- terra::crs(FAME_UD_standardised_RAZO_r)


FAME_UD_standardised_RAZO_metadata <- list(
  n_rows = nrows,
  n_cols = ncols,
  x_min = xmin,
  x_max = xmax,
  y_min = ymin,
  y_max = ymax,
  crs = crs
)

FAME_UD_standardised_RAZO <- list(matrix = FAME_UD_standardised_RAZO_m,
                             metadata = FAME_UD_standardised_RAZO_metadata)


usethis::use_data(FAME_UD_standardised_RAZO, overwrite = TRUE)

str(FAME_UD_standardised_RAZO)
