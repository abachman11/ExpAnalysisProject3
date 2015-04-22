NEI <- readRDS("data/summarySCC_PM25.rds")
SCC <- readRDS("data/Source_Classification_Code.rds")

library(dplyer)

baltimore.emissions.by.year <- NEI %>%  filter(fips == "24510") %>%
  select(year, Emissions) %>% 
  group_by(year) %>%
  summarize(Emissions = sum(Emissions))
plot(baltimore.emissions.by.year)
dev.copy(png, file="plot2.png")
dev.off()