library(tidyverse)
#US Arrests - dataset of crime statistics from 1974 in USA
data <- USArrests

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




