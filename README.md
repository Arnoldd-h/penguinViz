[![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/Arnoldd-h/penguinViz)
[![Build Status](https://travis-ci.com/Arnoldd-h/penguinViz.svg?branch=master)](https://travis-ci.com/Arnoldd-h/penguinViz)
[![Coverage Status](https://coveralls.io/repos/github/Arnoldd-h/penguinViz/badge.svg?branch=master)](https://coveralls.io/github/Arnoldd-h/penguinViz?branch=master)


# penguinViz
[![Version](https://img.shields.io/badge/version-1.0.0-blue)](https://github.com/Arnoldd-h/penguinViz)

The `penguinViz` package provides a set of easy-to-use functions for visualizing data about penguins. With `penguinViz`, you can quickly generate bar plots, pie charts, box plots, scatter plots, density plots, and correlation plots to explore and understand your penguin data.

## Installation

You can install the `penguinViz` package from GitHub using the `devtools` package:

```r
# install.packages("devtools")
devtools::install_github("Arnoldd-h/penguinViz")
```
## Usage
To use the penguinViz package, first load it using the library function:
```r
library(penguinViz)
```
## [Functions:](https://github.com/Arnoldd-h/penguinViz/tree/main/R)
Once the package is loaded, you can use its functions to generate different types of plots. The package includes the following functions:

* [```barplot_var:```](https://github.com/Arnoldd-h/penguinViz/blob/main/R/barplot_var.R) This function generates a bar plot of the frequency of a specified variable in the input data frame.
* [```piechart_var:```](https://github.com/Arnoldd-h/penguinViz/blob/main/R/piechart_var.R) This function generates a pie chart of the relative frequency of a specified variable in the input data frame.
* [```correlation_table:```](https://github.com/Arnoldd-h/penguinViz/blob/main/R/correlation_table.R) This function generates a correlation table of the numeric variables in the input data frame.
* [```correlation_plot:```](https://github.com/Arnoldd-h/penguinViz/blob/main/R/correlation_plot.R) This function generates a correlation plot of the numeric variables in the input data frame.
* [```boxplot_jitter_var:```](https://github.com/Arnoldd-h/penguinViz/blob/main/R/boxplot_jitter_var.R) This function generates a box plot with jittered points of a specified variable in the input data frame.
* [```densityplot_var:```](https://github.com/Arnoldd-h/penguinViz/blob/main/R/densityplot_var.R) This function generates a density plot of a specified variable in the input data frame.


For example, to generate a bar plot of the frequency of penguin species, you can use the barplot_var function:


 ```r
 boxplot_jitter_var(df, "species")
 >
 ![boxplot_jitter_var( )](https://user-images.githubusercontent.com/127006114/229267900-5ccdddb5-bda0-4c86-9f3f-b151f511dc21.png)

 ```
 
This will generate a bar plot using the data in your df data frame and the specified variable (species). You can use the other functions in the package in a similar way to generate different types of plots.

# Documentation
For more information on how to use penguin Viz, see our full documentation at https://arnoldd-h.github.io/penguinViz/.

For more information on the operation of each of the functions, you can review the document [description_package.rmd](https://github.com/Arnoldd-h/penguinViz/blob/main/description_package.Rmd)



# License
The  ```penguinViz ``` package is licensed under the MIT license.


This updated `README` file provides an overview of the  ```penguinViz ``` package and its functions. It includes information on how to install and use the package, as well as a list of available functions and examples of how to use them. You can modify this template to include additional information about your package and its features.
