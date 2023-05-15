# libraries
library(tidyverse)
library(showtext)
library(ggtext)
library(patchwork)
library(glue)
library(maps)
library(mapproj)

# data
tuesdata <- tidytuesdayR::tt_load(2023, week = 20)
tornados <- tuesdata$tornados
state <- map_data("state")

# plot
ggplot(data = state, aes(x = long, y = lat, group = group)) + 
  geom_polygon(fill = "lightblue", color = "black") +
  coord_map(projection = "mercator") +
  theme_void()
