#' Placeholder
#'
#' \code{calArea} calcula el area de un poligono en metros cuadrados o hectáreas
#'
#' @param poligono un objeto espacial sf
#' @param unidad unidad de medida en la que se quiera obtener el area
#'
#' @return El area del polígono en hectáreas
#' @importFrom sf st_area
#'
#' @examples
#' poligono <- st_polygon(list(cbind(c(6, 10, 10, 6, 6), c(6, 6, 10, 10, 6))))
#' calHA(poligono)
#' @export

calArea <- function(poligono, unidad){
  area_m2 <- sf::st_area(poligono)
  hectareas <- as.numeric(area_m2 / 10000)
  return(hectareas)
}


