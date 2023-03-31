#' barplot_var
#'
#' Esta función genera un diagrama de barras de la frecuencia de especies, islas y sexo de pingüinos.
#' Toma un marco de datos como argumento y devuelve un gráfico de barras.
#'
#' @param df Recibe de variable el  conjunto de datos de la data(package='palmerpenguins')
#' @param var_index Recibe una numeración para cada variable, definida en la funcion
#'                    1 = "species"
#'                    2 = "island"
#'                    3 = "sex"
#'                    "all" = Una grafica conjunta con las anteriores variables
#' @return un grafico diagrama de barras de cada una de las variables de la data.
#' @export
#'
#' @examples
#' data(package='palmerpenguins')
#' df <- penguins
#' barplot_var(df, 1)
#' barplot_var(df, "all")
barplot_var <- function(df, var_index) {
  var_list <- c("species", "island", "sex")
  fill_list <- list(
    species = c("Adelie" = "blue", "Chinstrap" = "red", "Gentoo" = "green"),
    island = c("Biscoe" = "blue", "Dream" = "red", "Torgersen" = "green"),
    sex = c("female" = "blue", "male" = "red")
  )
  if (!all(var_list %in% colnames(df))) {
    stop("Input data frame must contain all columns in 'var_list'")
  }
  if (var_index == "all") {
    plot_list <- list()
    for (var in var_list) {
      p <- ggplot(df, aes_string(x = var, fill = var)) +
        geom_bar() +
        scale_fill_manual(values = fill_list[[var]]) +
        labs(title = paste('Penguins', var, '& Count')) +
        theme_grey()
      plot_list[[var]] <- p
    }
    gridExtra::grid.arrange(grobs = plot_list, ncol = 2)
  } else {
    var <- var_list[var_index]
    p <- ggplot(df, aes_string(x = var, fill = var)) +
      geom_bar() +
      scale_fill_manual(values = fill_list[[var]]) +
      labs(title = paste('Penguins', var, '& Count')) +
      theme_grey()
    print(p)
  }
}
