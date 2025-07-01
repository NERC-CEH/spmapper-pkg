## ########################################
#' @title Plot prey consumption maps, with user polygons overlaid (optional)
#' @description Plot prey consumption maps, with user polygons overlaid (optional)
#' @param rast A spatRaster raster object to be plotted (i.e. prey consumption map)
#' @param polyg An optional sf object (i.e. user polygons) to overlay on the raster plot (default: `NULL`).

#' @return Prey consumption map with Western European country polygons (via rnaturalearth), with (optional) user input polygons overlaid: ggplot
#' @export
## ########################################

spmapplot <- function(rast, polyg = NULL){

  proj.laea <- '+proj=laea +lat_0=-7.947 +lon_0=-14.30 +x_0=0 +y_0=0 +ellps=WGS84 +datum=WGS84  +units=m +no_defs'

  ## ################################
  ## Western Europe country polygons (rnatural earth)

  world <- rnaturalearth::ne_countries(scale="large", returnclass = "sf")
  sf::sf_use_s2(FALSE)
  world.laea <-  sf::st_transform(world, crs = proj.laea)
  bbox_sfc <- sf::st_as_sfc(sf::st_bbox(c(xmin = -16, ymin = 45, xmax = 12, ymax = 65), crs = 4326))
  bbox_proj <- sf::st_transform(bbox_sfc, proj.laea)
  west.eur.laea <- suppressWarnings(sf::st_crop(world.laea, bbox_proj))

  ## ################################
  ## Raster plot

  # ensure laea projection
  rast <- terra::project(rast, proj.laea)

  # raster resolution for mass per area plot
  rast.res.km <- 2 # UDs proivided in 2000m * 2000m (2 km resolution)
  #rast.res.km <- res(rast)[1] / 1000 # needs raster units to be in metres

  # Convert to spatial dataframe
  rastdf <- as.data.frame(rast, xy = T)

  # plot
  virpal <- viridisLite::viridis(n = 500) # Colour Palette
  lp <- seq(-4, 1, 1)

  p <- ggplot2::ggplot() + ggplot2::geom_raster(data = rastdf,
                              ggplot2::aes(x = x, y = y, fill = rastdf[,3] / rast.res.km )) +

    ggplot2::scale_fill_gradientn(colours = virpal, trans = 'log10',
                         limits=c(min(10^lp)*10, # 0.001 tonnes, or 1 kg/km2
                                  max(10^lp)),
                         na.value = "gray",
                         breaks = 10^lp, labels = 10^lp) +

    ggplot2::guides(fill = ggplot2::guide_colourbar(barwidth = 1.2,
                                  barheight = 9,
                                  title = expression(atop(bold("Prey consumption"), bold("tonnes km"^"-2"))))) +

    ggplot2::coord_sf(xlim = c(min(rastdf$x), max(rastdf$x)),
             ylim = c(min(rastdf$y), max(rastdf$y)),
             expand = FALSE) +

    ggplot2::geom_sf(data = west.eur.laea, fill = "grey97", colour = "black") +

    ggplot2::labs(x = "Longitude", y = "Latitude") +

    ggplot2::theme(axis.text.x = ggplot2::element_text(vjust=0.5, size=13.5),
          axis.text.y = ggplot2::element_text(size=14),
          axis.title.x = ggplot2::element_text(size=16, margin = ggplot2::margin(t=10), face="bold"),
          axis.title.y = ggplot2::element_text(size=16, margin = ggplot2::margin(r=12), face="bold"),
          plot.title = ggplot2::element_text(size = 17),

          panel.grid.major = ggplot2::element_blank(),
          panel.grid.minor = ggplot2::element_blank(),

          plot.background = ggplot2::element_rect(fill = "transparent", color = NA),   # Transparent  background
          panel.border = ggplot2::element_blank()
    )


  ## ################################
  if(!is.null(polyg)){

    ## If user polygons are provided, overlay
    polyg <- sf::st_transform(polyg, proj.laea) # ensure laea projection

    # plot
    p <- p + ggplot2::geom_sf(data = polyg,
                     colour = "orchid2", fill = NA,
                     alpha = 1, linewidth = 0.4) +
      ggplot2::coord_sf(xlim = c(min(rastdf$x), max(rastdf$x)),
               ylim = c(min(rastdf$y), max(rastdf$y)),
               expand = FALSE)

  }
  return(p) # return plot
}

## ########################################
