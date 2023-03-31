#' correlation_table
#'
#' Esta función calcula la matriz de correlación de los cuatro atributos numéricos:
#' de cada variable de la data (“bill_length_mm”, “bill_depth_mm”, “flipper_length_mm” y “body_mass_g”)
#'  en un conjunto de datos proporcionado en forma de un marco de datos
#'
#' @param df Recibe de variable el  conjunto de datos de la data(package='palmerpenguins')
#'
#' @return un conjunto de datos proporcionado en forma de un marco de datos
#' @export
#'
#' @examples
#' data(package='palmerpenguins')
#' df <- penguins
#' correlation_table(df)
#'
correlation_table <- function(df) {
  if (!all(c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g") %in% colnames(df))) {
    stop("Input data frame must contain 'bill_length_mm', 'bill_depth_mm', 'flipper_length_mm', and 'body_mass_g' columns")
  }
  df_num <- df %>%
    select(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g) %>%
    filter(is.na(bill_length_mm) == F)
  df_num.cor <- cor(df_num, method = c("spearman"))
  return(df_num.cor)
}
