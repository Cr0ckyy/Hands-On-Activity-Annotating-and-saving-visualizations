# Read in the file 'hotel_bookings.csv' into a data frame
hotel_bookings <- read.csv("hotel_bookings.csv")

# Preview the first few rows of the data
head(hotel_bookings)

# View the column names of the data
colnames(hotel_bookings)

# Install the ggplot2 package for data visualization
install.packages('ggplot2')

# Load the ggplot2 library for data visualization
library(ggplot2)

# Create a bar plot showing the market segments for each hotel type
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

# Add a title to the plot
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings")

# Find the minimum and maximum years in the data
min(hotel_bookings$arrival_date_year)
max(hotel_bookings$arrival_date_year)

# Save the minimum and maximum years in variables
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

# Add a subtitle to the plot with the range of years
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       subtitle = paste0("Data from: ", mindate, " to ", maxdate))

# Create a bar plot showing the market segments for each hotel type
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       caption = paste0("Data from: ", mindate, " to ", maxdate),
       x = "Market Segment",
       y = "Number of Bookings")


# Save plot with dimensions 5x5 (in inches)
ggsave('hotel_booking_chart_5x5.png', width = 5, height = 5, units = 'in')

# Save plot with dimensions 7x7 (in inches)
ggsave('hotel_booking_chart_7x7.png', width = 7, height = 7, units = 'in')

# Save plot with dimensions 10x10 (in inches)
ggsave('hotel_booking_chart_10x10.png', width = 10, height = 10, units = 'in')

# Save plot with dimensions 25x25 (in inches)
ggsave('hotel_booking_chart_25x25.png', width = 25, height = 25, units = 'in')

