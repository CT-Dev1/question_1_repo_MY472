library(tidyverse)
#US Arrests - dataset of crime statistics from 1974 in USA
data <- USArrests

#function to return scaled value for each crime statistic observation, where max value is defined as input by user 
min_max_scaling <- function(data,max_value){
  scaled_data <- data %>%
    select(Murder, Assault, Rape) %>% 
    mutate(Murder_Scaled = ((Murder - min(Murder))/(max(Murder)-min(Murder)))*max_value) %>% 
    mutate(Assault_Scaled = ((Assault - min(Assault))/(max(Assault)-min(Assault)))*max_value) %>% 
    mutate(Rape_Scaled = ((Rape - min(Rape))/(max(Rape)-min(Rape)))*max_value) %>% 
    select(Murder_Scaled,Rape_Scaled,Assault_Scaled)
  return(scaled_data)
}

#testing function for max_value = 100, ie. could to be used to find percentage of maximum observed crime for each crime
min_max_scaling(data,100)




