# loadfilr
NEI <- readRDS("./Exploratory-Data-Analysis-project-2/data/summarySCC_PM25.rds")
SCC <- readRDS("./Exploratory-Data-Analysis-project-2/data/Source_Classification_Code.rds")

# Sample data
NEIsample <- NEI[sample(nrow(NEI), size = 5000, replace = F), ]

# Subset data
MD <- subset(NEI, fips == '24510')

png(filename = 'plot2.png')
barplot(tapply(X = MD$Emissions, INDEX = MD$year, FUN = sum), main = 'Emission in Baltimore, MD', xlab = 'Year', ylab = expression('PM'[2.5]))
dev.off()