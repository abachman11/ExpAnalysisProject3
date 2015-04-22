NEI <- readRDS("data/summarySCC_PM25.rds")
SCC <- readRDS("data/Source_Classification_Code.rds")

library(dplyer)

baltimore.emissions <- NEI %>%  filter(fips == "24510") %>%
  select(year, Emissions, type) %>% 
  group_by(year, type) %>%
  summarize(Emissions = sum(Emissions))
plot(baltimore.emissions)
dev.copy(png, file="plot3.png")
dev.off()