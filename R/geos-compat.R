#' @export
#' @name is_geometry
is_geometry.geos_geometry <- function(x) inherits(x, "geos_geometry")

#' @export
#' @name bounding_box
bounding_box.geos_geometry <- function(x) {
  extents <- geos::geos_extent(x)
  apply(extents, 2, min)
}

#' @export
#' @name combine_geometry
combine_geometry.geos_geometry <- function(x) {
  geos::geos_make_collection(x)
}

