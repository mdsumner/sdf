if (requireNamespace("wk", quietly = TRUE)) {

}
#' @export
#' @name is_geometry
is_geometry.wk_vctr <- function(x) {
  inherits(x, "wk_vctr")
}

#' @export
#' @name bounding_box
bounding_box.wk_vctr <- function(x) {
  structure(as.numeric(wk::wk_bbox(x)), names = c("xmin", "ymin", "xmax", "ymax"))
}


#' @export
#' @name combine_geometry
combine_geometry.wk_vctr <- function(x) wk::wk_collection(x)

#' @export
#' @name union_geometry
union_geometry.wk_wkb <- function(x) {
  wk::as_wkb(geos::geos_unary_union(x))
}
#' @export
#' @name union_geometry
union_geometry.wk_wkt <- function(x) {
  wk::as_wkt(geos::geos_unary_union(x))
}

#' @export
#' @name simplify_geometry
simplify_geometry.wk_wkb <- function(x, tolerance = 1) wk::as_wkb(geos::geos_simplify(x, tolerance))

#' @export
#' @name simplyify_geometry
simplify_geometry.wk_wkt <- function(x, tolerance = 1) wk::as_wkt(geos::geos_simplify(x, tolerance))

#' @export
#' @name buffer_geometry
buffer_geometry.wk_wkb <- function(x, distance, ...) wk::as_wkb(geos::geos_buffer(x, distance, ...))

#' @export
#' @name buffer_geometry
buffer_geometry.wk_wkt <- function(x, distance, ...) wk::as_wkt(geos::geos_buffer(x, distance, ...))

#' @export
#' @name centroid_geometry
centroid_geometry.wk_wkb <- function(x) wk::as_wkb(geos::geos_centroid(x))
#' @export
#' @name centroid_geometry
centroid_geometry.wk_wkt <- function(x) wk::as_wkt(geos::geos_centroid(x))

#' @export
#' @name convex_hull_geometry
convex_hull_geometry.wk_wkb <- function(x) wk::as_wkb(geos::geos_convex_hull(x))

#' @export
#' @name convex_hull_geometry
convex_hull_geometry.wk_wkb <- function(x) wk::as_wkb(geos::geos_convex_hull(x))



