NEI <- readRDS("data/summarySCC_PM25.rds")
SCC <- readRDS("data/Source_Classification_Code.rds")

library(dplyer)

total.emissions.by.year <- select(NEI, year, Emissions) %>% 
  group_by(year) %>%
  summarize(Emissions = sum(Emissions))
plot(total.emissions.by.year)
dev.copy(png, file="plot1.png")
dev.off()
