#' piechart_var
#'
#' Esta función genera un gráfico circular de la frecuencia relativa de especies, islas y sexos de pingüinos.
#'  Toma un marco de datos como argumento y devuelve un gráfico circular.
#'
#'@param df Recibe de variable el  conjunto de datos de la data(package='palmerpenguins')
#'@param var_index Recibe una numeración para cada variable, definida en la funcion
#'                    1 = "species"
#'                    2 = "island"
#'                    3 = "sex"
#'                    "all" = Una grafica conjunta con las anteriores variables
#'
#' @return  un gráfico circular de la frecuencia relativa
#' @export
#'
#' @examples
#' data(package='palmerpenguins')
#' df <- penguins
#' piechart_var(df, 1)
#' piechart_var(df, "all")
#'
#'
piechart_var <- function(df, var_index) {
  var_list <- c("species", "island", "sex")
  if (!all(var_list %in% colnames(df))) {
    stop("Input data frame must contain all columns in 'var_list'")
  }
  if (var_index == "all") {
    plot_list <- list()
    for (var in var_list) {
      p <- ggplot(df, aes(x = "", fill = !!sym(var))) +
        geom_bar(width = 1) +
        coord_polar("y") +
        theme_grey() +
        labs(title = paste('Penguins', var))
      plot_list[[var]] <- p
    }
    gridExtra::grid.arrange(grobs = plot_list, ncol = 2)
  } else {
    var <- var_list[var_index]
    p <- ggplot(df, aes(x = "", fill = !!sym(var))) +
      geom_bar(width = 1) +
      coord_polar("y") +
      theme_grey() +
      labs(title = paste('Penguins', var))
    print(p)
  }
}
