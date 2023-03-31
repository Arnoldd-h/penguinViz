#' correlation_plot
#'
#' Esta función calcula la matriz de correlación de los atributos numéricos en un conjunto de datos
#' y traza un gráfico de correlación utilizando la función corrplot.
#' @param df Conjunto de datos que contiene las columnas ‘bill_length_mm’, ‘bill_depth_mm’, ‘flipper_length_mm’, y ‘body_mass_g’.
#'
#' @return una matriz de correlación
#' @export
#'
#' @examples
#' data(package='palmerpenguins')
#' df <- penguins
#' correlation_plot(df)
correlation_plot <- function(df) {
  if (!all(c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g") %in% colnames(df))) {
    stop("Input data frame must contain 'bill_length_mm', 'bill_depth_mm', 'flipper_length_mm', and 'body_mass_g' columns")
  }
  df_num <- df %>%
    select(bill_length_mm, bill_depth_mm, flipper_length_mm, body_mass_g) %>%
    filter(is.na(bill_length_mm) == F)
  df_num.cor <- cor(df_num, method = c("spearman"))
  corrplot(df_num.cor)
}
