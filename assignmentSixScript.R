library(ggmap)
library(tidyverse)
#Add Route from beach to pub
map3 <- get_map(location = "Bude", zoom= 14)
df <- data.frame(location = c('Crooklets beach', 'Summerleaze beach', 'The Barrel at Bude'), color = 'blue', stringsAsFactors = FALSE)
#May take a couple tries, isn't stable for whatever reason but it works
locs_geo <- geocode(df$location)
df <- cbind(df, locs_geo)
ggmap(map3) + geom_point(data = df, aes(x = lon, y = lat))
#Next line also may take a couple tries
mapWater <- get_map(location = 'Bude', zoom = 14, maptype = 'watercolor')
from <- "Summerleaze beach"
to <- "The Barrel at Bude"
route_df <- route(from, to, structure = "route")
ggmap(mapWater) + geom_point(data = df, aes(x = lon, y = lat))
ggmap(mapWater) +  
  geom_path(
    aes(x = lon, y = lat), colour = "red", size = 1.5,
    data = route_df, lineend = "round"
  ) + geom_point(data = df, aes(x = lon, y = lat))
