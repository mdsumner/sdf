#' @export
#' @importFrom graphics plot
#' @name plot
plot.sdf <- function(x, ...) {
  geom <- x[[which_is_geom_col(x)]]
  plot(geom, ...)
}
