library(tidyverse)
#US Arrests - dataset of crime statistics from 1974 in USA
data <- USArrests

<<<<<<< HEAD
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
=======
#function to return scaled value for each crime statistic observation, where max value = 1 and min value = 0 
min_max_scaling <- function(data){
  scaled_data <- data %>%
    select(Murder, Assault, Rape) %>% 
    mutate(Murder_Scaled = (Murder - min(Murder))/(max(Murder)-min(Murder))) %>% 
    mutate(Assault_Scaled = (Assault - min(Assault))/(max(Assault)-min(Assault))) %>% 
    mutate(Rape_Scaled = (Rape - min(Rape))/(max(Rape)-min(Rape))) %>% 
    select(Murder_Scaled,Rape_Scaled,Assault_Scaled)
  return(scaled_data)
}

min_max_scaling(data)




>>>>>>> e01091de014ee984de9b39503214f72c0670389d
