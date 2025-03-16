library(rvest)
library(readr)
# Define the URL/ website
url <- "https://en.wikipedia.org/wiki/Comma-separated_values"
# Read the webpage/ website
tables <- read_html(url)

# Extract all tables
extract_tables <- html_nodes(tables, "table")
# Extract the car table
cars_table <- html_table(extract_tables[[2]], fill = TRUE)
print(cars_table)

# save the cars table as CSV file
write.csv(cars_table, file = "~/Desktop/st_2195/st2195_assignment_2/r_csv/cars.csv", row.names = FALSE)
