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
