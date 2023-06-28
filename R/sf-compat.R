#' @export
#' @name combine_geometry
combine_geometry.sfc <- function(x) sf::st_combine(x)

#' @export
#' @name union_geometry
union_geometry.sfc <- function(x) sf::st_union(x)
#' @export
#' @name simplify_geometry
simplify_geometry.sfc <- function(x) sf::st_simplify(x, ...)

#' @export
#' @name buffer_geometry
buffer_geometry.sfc <- function(x, distance, ...) sf::st_buffer(x, distance, ...)

#' @export
#' @name bounding_box
bounding_box.sfc <- function(x) sf::st_bbox(x)

#' @export
#' @name centroid
centroid.sfc <- function(x) sf::st_centroid(x)

#' @export
#' @name convex_hull
convex_hull.sfc <- function(x) sf::st_convex_hull(x)



