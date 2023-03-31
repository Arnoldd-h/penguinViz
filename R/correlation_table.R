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
