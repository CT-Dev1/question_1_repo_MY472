#loading packages
library(tidyverse)

#loading the data
data <- InsectSprays

#defining function that outputs a table with the minimum insect prevalence recorded by each pesticide 
find_minimum_insects <- function(data){
  data %>% 
    group_by(spray) %>% 
    summarize(Min_Insects = min(count))
}

#testing the function on InsectSprays data
find_minimum_insects(data)
