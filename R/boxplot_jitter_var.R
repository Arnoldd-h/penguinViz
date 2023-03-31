#' boxplot_jitter_var
#'
#' esta función genera un gráfico de dispersión para cada variable en el conjunto de datos de pingüinos,
#' con la opción de generar gráficas para variables individuales o para todas las variables.
#'
#' @param df Recibe de variable el  conjunto de datos de la data(package='palmerpenguins')
#' @param var_index Recibe una numeración para cada variable, definida en la funcion
#'                    1 = "bill_length_mm"
#'                    2 = "bill_depth_mm"
#'                    3 = "flipper_length_mm"
#'                    4 = "body_mass_g"
#'                "all" = Una grafica conjunta con las anteriores variables
#'
#' @return un diagrama de dispersión
#' @export
#'
#' @examples
#' data(package='palmerpenguins')
#' df <- penguins
#' boxplot_jitter_var(df, 1)
#' boxplot_jitter_var(df, "all")
#'
boxplot_jitter_var <- function(df, var_index) {
  var_list <- c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")
  if (!all(var_list %in% colnames(df))) {
    stop("Input data frame must contain all columns in 'var_list'")
  }
  if (var_index == "all") {
    plot_list <- list()
    for (var in var_list) {
      p <- ggplot(df, aes_string(x = "species", y = var)) +
        geom_boxplot(aes(color = species), width = 0.3, show.legend = FALSE) +
        geom_jitter(aes(color = species), alpha = 0.5, show.legend = FALSE,
                    position = position_jitter(width = 0.2, seed = 0)) +
        scale_color_manual(values = c("darkorange","purple","cyan4")) +
        theme_grey() +
        labs(x = "Species", y = var)
      plot_list[[var]] <- p
    }
    gridExtra::grid.arrange(grobs = plot_list, ncol = 2)
  } else {
    var <- var_list[var_index]
    p <- ggplot(df, aes_string(x = "species", y = var)) +
      geom_boxplot(aes(color = species), width = 0.3, show.legend = FALSE) +
      geom_jitter(aes(color = species), alpha = 0.5, show.legend = FALSE,
                  position = position_jitter(width = 0.2, seed = 0)) +
      scale_color_manual(values = c("darkorange","purple","cyan4")) +
      theme_grey() +
      labs(x = "Species", y = var)
    print(p)
  }
}
