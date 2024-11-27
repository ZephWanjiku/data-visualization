library(tidyverse)
library(ggmap)
data <- read.csv(url("http://672258.youcanlearnit.net/college.csv"))
summary(data)
data <- data %>% 
  mutate(state = as.factor(state), 
         region = as.factor(region),
         highest_degree = as.factor(highest_degree),
         control = as.factor(control),
         gender = as.factor(gender),
         loan_default_rate = as.numeric(loan_default_rate)
         )
unique(data$loan_default_rate)
ggplot(data = data) +
  geom_point(mapping = aes(x=tuition,y=sat_avg))
