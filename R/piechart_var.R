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
