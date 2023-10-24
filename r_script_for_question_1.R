#loading packages
library(tidyverse)

#loading the data
data <- InsectSprays

#defining function that outputs a table with the minimum insect prevalence recorded by each pesticide
#two inputs - data and number of insect count to display in ascending order
find_minimum_insects <- function(data,numbers_to_display){
  data %>% 
    group_by(spray) %>% 
    arrange(count) %>% 
    slice(1:numbers_to_display) %>% 
    summarize(spray = spray, minimum = slice(1:numbers_to_display))
    
}

#testing the function on InsectSprays data
find_minimum_insects(data,3)
