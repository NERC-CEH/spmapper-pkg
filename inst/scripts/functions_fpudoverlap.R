## ########################################
#' @title Calculate proportion of UD that lies within polygon(s)
#' @description Calculate proportion of UD that lies within polygon(s)
#' @param fppolys Footprint(s): a simple feature collection
#' @param udmap A utilisation distribution: NOTE: values must sum to approximately one, but not currently checked
#' @return Proportion of UD overlapping a polygon: a single numeric value
#' @export

fpudoverlap <- function(fppolys, udmap){

  ## #################################
  ## 1. Reproject polygons

  fppolys_trans <- sf::st_transform(fppolys, crs = terra::crs(udmap))

  ## #################################
  ## 2. Check footprint area is not too small:

  if(as.numeric(sum(sf::st_area(fppolys_trans))) < prod(terra::res(udmap))){

    stop("Size of footprint is smaller than the size of a single grid cell - tool would not produce meaningful results in this situation")
  }

  ## #################################
  ## 3. Check polygon is not outside grid area:

  extent.poly <- terra::ext(fppolys_trans)
  extent.grid <- terra::ext(udmap)

  if((extent.poly$xmin < extent.grid$xmin) | (extent.poly$xmax > extent.grid$xmax) | (extent.poly$ymin < extent.grid$ymin) | (extent.poly$ymax > extent.grid$ymax)){

    stop("Polygon lies partly or completely outside area of selected grid!")
  }

  ## #################################
  ## 4. Calculate proportion of each grid cell in footprint

  pcell.in.footprint <- terra::values(terra::rasterize(fppolys_trans, udmap, cover=TRUE, background = 0))

  ## #################################
  ## 5. Find parts of grid that are sea

  is_cell_atsea <- (! is.na(terra::values(udmap)))

  ## #################################
  ## 6. Check none of footprint is on land:

  if(any((! is_cell_atsea) & (pcell.in.footprint > 0))){ stop("Part or all of footprint lies on land or outside area with UD values!") }

  ## #################################
  ## 7. Subset so that only using values for grid cells at sea:
  ## Produces a vector whose length is equal to the number of at-sea (i.e. non-land) grid cells in the raster 'tmpl.land', containing the proportion of each grid cell that is contained within the footprint polygon

  pcell.in.footprint <- pcell.in.footprint[is_cell_atsea]

  ## #################################
  ## 8. Check for zero overlap between footprint and grid cell:
  ## (Note: this error is unlikely to ever arise, as this is likely to arise in situations where footprint is very small, which should be picked up by previous error message at Stage 2)

  if(sum(pcell.in.footprint) == 0){ stop("Zero overlap between footprint and any grid cell") }

  ## #################################
  ## 9. Bird distribution map values: at sea grid cells only

  udvals_atsea <- terra::values(udmap)[is_cell_atsea]

  ## #################################
  ## 10. Total overlap

  fp_ud_overlap <- sum(udvals_atsea * pcell.in.footprint)

  ## #################################

  fp_ud_overlap
}

## ########################################
