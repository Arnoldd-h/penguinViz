# penguinViz

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

* ```barplot_var:``` This function generates a bar plot of the frequency of a specified variable in the input data frame.
* ```piechart_var:``` This function generates a pie chart of the relative frequency of a specified variable in the input data frame.
* ```correlation_table:``` This function generates a correlation table of the numeric variables in the input data frame.
* ```correlation_plot:``` This function generates a correlation plot of the numeric variables in the input data frame.
* ```boxplot_jitter_var:``` This function generates a box plot with jittered points of a specified variable in the input data frame.
* ```densityplot_var:``` This function generates a density plot of a specified variable in the input data frame.


For example, to generate a bar plot of the frequency of penguin species, you can use the barplot_var function:

 ```r
 barplot_var(df, "species")
 ```
This will generate a bar plot using the data in your df data frame and the specified variable (species). You can use the other functions in the package in a similar way to generate different types of plots.

# License
The  ```penguinViz ``` package is licensed under the MIT license.


This updated `README` file provides an overview of the  ```penguinViz ``` package and its functions. It includes information on how to install and use the package, as well as a list of available functions and examples of how to use them. You can modify this template to include additional information about your package and its features.
