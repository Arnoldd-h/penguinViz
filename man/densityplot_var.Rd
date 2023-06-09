% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/densityplot_var.R
\name{densityplot_var}
\alias{densityplot_var}
\title{densityplot_var}
\usage{
densityplot_var(df, var_index)
}
\arguments{
\item{df}{Recibe de variable el  conjunto de datos de la data(package='palmerpenguins')}

\item{var_index}{Recibe una numeración para cada variable, definida en la funcion
1 = "bill_length_mm"
2 = "bill_depth_mm"
3 = "flipper_length_mm"
4 = "body_mass_g"
"all" = Una grafica conjunta con las anteriores variables}
}
\value{
un grafico de densidad
}
\description{
Esta función genera una gráfica de densidad para cada variable en el conjunto de datos de pingüinos,
con la opción de generar gráficas para variables individuales o para todas las variables.
}
\examples{
data(package='palmerpenguins')
df <- penguins
densityplot_var(df, 1)
densityplot_var(df, "all")

}
