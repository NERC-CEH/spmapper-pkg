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
  sf_use_s2(FALSE)
  world.laea <-  st_transform(world, crs = proj.laea)
  bbox_sfc <- st_as_sfc(st_bbox(c(xmin = -16, ymin = 45, xmax = 12, ymax = 65), crs = 4326))
  bbox_proj <- st_transform(bbox_sfc, proj.laea)
  west.eur.laea <- suppressWarnings(st_crop(world.laea, bbox_proj))

  ## ################################
  ## Raster plot

  # ensure laea projection
  rast <- project(rast, proj.laea)

  # Convert to spatial dataframe
  rastdf <- as.data.frame(rast, xy = T)

  # plot
  virpal <- viridis(n = 500) # Colour Palette
  lp <- seq(-4, 1, 1)

  p <- ggplot() + geom_raster(data = rastdf,
                              aes(x = x, y = y, fill = rastdf[,3])) +

    scale_fill_gradientn(colours = virpal, trans = 'log10',
                         #limits=c(min(10^lp), max(10^lp)),     # Control fill limits limits <<<<<<<<<<
                         na.value = "gray", breaks = 10^lp, labels = 10^lp) +

    guides(fill = guide_colourbar(barwidth = 1.2,
                                  barheight = 9,
                                  title = expression(atop(bold("Prey consumption"), bold("tonnes km"^"-2"))))) +

    coord_sf(xlim = c(min(rastdf$x), max(rastdf$x)),
             ylim = c(min(rastdf$y), max(rastdf$y)),
             expand = FALSE) +

    geom_sf(data = west.eur.laea, fill = "grey97", colour = "black") +

    labs(x = "Longitude", y = "Latitude") +

    theme(axis.text.x = element_text(vjust=0.5, size=13.5),
          axis.text.y = element_text(size=14),
          axis.title.x = element_text(size=16, margin = margin(t=10), face="bold"),
          axis.title.y = element_text(size=16, margin = margin(r=12), face="bold"),
          plot.title = element_text(size = 17),

          panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),

          plot.background = element_rect(fill = "transparent", color = NA),   # Transparent  background
          panel.border = element_blank()
    )


  ## ################################
  if(!is.null(polyg)){

    ## If user polygons are provided, overlay
    polyg <- st_transform(polyg, proj.laea) # ensure laea projection

    # plot
    p <- p + geom_sf(data = polyg,
                     colour = "orchid2", fill = NA,
                     alpha = 1, linewidth = 0.4) +
      coord_sf(xlim = c(min(rastdf$x), max(rastdf$x)),
               ylim = c(min(rastdf$y), max(rastdf$y)),
               expand = FALSE)

  }
  return(p) # return plot
}

## ########################################
