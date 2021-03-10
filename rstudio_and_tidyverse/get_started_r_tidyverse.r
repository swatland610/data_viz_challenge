# brand new to R? checkout RStudio, the popular IDE for R: https://rstudio.com/products/rstudio/
# install/load tidyverse packages
# this will bring in other R packages to help analyze and visualize data
install.packages('tidyverse') # this will install the tidyverse package if not already installed
library('tidyverse') # this then loads the tidyverse and accompanying packages

# set url variable to csv data on GitHub
url <- "https://raw.githubusercontent.com/swatland610/data_viz_challenge/main/data/2021_chicago_budget_appropriations.csv"

# read data into a dataframe
df <- read_csv(url)

# check out the columns that were imported from the dataset
df %>% names()

# a quick visualization that shows amount budgeted to each department
df %>% ggplot(aes(x = `DEPARTMENT NUMBER`, y = `2021 ORDINANCE (AMOUNT $)`)) +
  geom_bar(stat = "identity", na.rm = TRUE)
