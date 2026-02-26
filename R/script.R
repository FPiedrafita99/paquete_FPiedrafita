#' Placeholder
#'
#' \code{calHA} calcula el area en hectáreas de un polígono
#'
#' @param poligono un objeto espacial
#'
#'
#' @return El area del polígono en hectáreas
#'@importFrom sf st_area
#'
#' @examples
#'
#'
#'
#'
#' @export

calHA <- function(poligono){
  area_m2 <- sf::st_area(poligono)
  hectareas <- area_m2 / 10000
  return(hectareas)
}


