#' Placeholder
#'
#' \code{calArea} calcula el area de un poligono en metros cuadrados o hectáreas
#'
#' @param poligono un objeto espacial sf
#' @param unidad unidad de medida de superficie en la que se quiera obtener el area (ha, m2)
#'
#' @return El area del polígono en hectáreas
#' @importFrom sf st_area
#'
#' @examples
#' poligono <- st_polygon(list(cbind(c(6, 10, 10, 6, 6), c(6, 6, 10, 10, 6))))
#' CalArea(poligono, 'ha')
#' poligono <- st_polygon(list(cbind(c(6, 10, 10, 6, 6), c(6, 6, 10, 10, 6))))
#' calArea(poligono, 'm2')
#'
#' @export

calArea <- function(poligono, unidad){

  area_m2 <- sf::st_area(poligono)
  if (unidad == 'ha'){
  resultado <- as.numeric(area_m2 / 10000)
  return(resultado)
  } else if (unidad == 'm2'){
    return (as.numeric(area_m2))

  }
}


