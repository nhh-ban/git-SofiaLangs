library(tidyverse)
library(dplyr)
library(ggplot2)
setwd("/Users/sofialangs/Documents/GitHub/git-SofiaLangs")
galaxies <- read_csv("galaxies.csv")

volume_plot<-
  ggplot(galaxies, aes(x = a_26)) +
  geom_histogram(bins = 70,fill="lightblue")+
  xlab("Volume")+
  ylab("Count")+
  geom_vline(aes(xintercept=mean(a_26, na.rm=TRUE)),color="red", linetype="dashed")+
  geom_vline(aes(xintercept=median(a_26, na.rm=TRUE)),color="blue", linetype="dashed")
ggsave("volume_plot.png")

#It is apparent that the distribution of the sample is positively skewed
#This means that mean (red) > median(blue)
#The presence of right-skewed data indicates that outliers on the higher end of 
#the scale (on the right) have significantly greater values 
#than the majority of observations on the lower end. 