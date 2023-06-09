% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlation_table.R
\name{correlation_table}
\alias{correlation_table}
\title{correlation_table}
\usage{
correlation_table(df)
}
\arguments{
\item{df}{Recibe de variable el  conjunto de datos de la data(package='palmerpenguins')}
}
\value{
un conjunto de datos proporcionado en forma de un marco de datos
}
\description{
Esta función calcula la matriz de correlación de los cuatro atributos numéricos:
de cada variable de la data (“bill_length_mm”, “bill_depth_mm”, “flipper_length_mm” y “body_mass_g”)
en un conjunto de datos proporcionado en forma de un marco de datos
}
\examples{
data(package='palmerpenguins')
df <- penguins
correlation_table(df)

}
