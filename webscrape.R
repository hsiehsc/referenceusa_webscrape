############### STEP 1 ###############
# This step only needs to be done ONCE 
install.packages("RSelenium")
install.packages("tidyr")
install.packages("tidyverse")
# This step will need to be done everytime RStudio is closed.
library(RSelenium)
library(tidyr)
library(tidyverse)

############### STEP 2 ###############
# RUN THE CODE BELOW
driver <- rsDriver(browser = "firefox")
# THEN RUN THIS CODE
remDr <- driver[["client"]]


############### STEP 3 ###############
# The code below is optional but when run, should automatically
# open up Google on the webbrowser.
remDr$navigate("https://www.google.com")

############### STEP 4 ###############
# Highlight and select the text from lines 27 to 116.
# Start and end is marked by a row of asterisks.
################################################################################
scrape <- function(last_page, name_of_file) {
  datalist <- list()
  for (i in 1:last_page) {
    # isolate the variables
    company_name <- remDr$findElements(
      using = "css",
      value = ".action-view-record"
    )
    executive_name <- remDr$findElements(
      using = "css",
      value = "td:nth-child(3)"
    )
    street_address <- remDr$findElements(
      using = "css",
      value = "td:nth-child(4)"
    )
    city_state <- remDr$findElements(
      using = "css",
      value = "td:nth-child(5)"
    )
    zip <- remDr$findElements(
      using = "css",
      value = "td:nth-child(6)"
    )
    phone <- remDr$findElements(
      using = "css",
      value = "td:nth-child(7)"
    )
    sales <- remDr$findElements(
      using = "css",
      value = "td:nth-child(8)"
    )
    
    # extract text and unlist
    company_out <- unlist(
      sapply(company_name, function(x) x$getElementText())
    )
    executive_out <- unlist(
      sapply(executive_name, function(x) x$getElementText())
    )
    street_out <- unlist(
      sapply(street_address, function(x) x$getElementText())
    )
    city_out <- unlist(
      sapply(city_state, function(x) x$getElementText())
    )
    phone_out <- unlist(
      sapply(phone, function(x) x$getElementText())
    )
    zip_out <- unlist(
      sapply(zip, function(x) x$getElementText())
    )
    sales_out <- unlist(
      sapply(sales, function(x) x$getElementText())
    )
    
    dat <- data.frame(
      company = company_out, executive_name = executive_out,
      street_name = street_out, city_name = city_out,
      zip_code = zip_out,
      phone_number = phone_out,
      sales = sales_out
    ) # create data frame
    
    next_page <- remDr$findElement(using = "css", value = ".next")
    next_page$clickElement() # advance to next page
    Sys.sleep(3) # sleep so the page can finish loading
    dat$page <- i # keep track of pages
    datalist[[i]] <- dat # adding to list
  }
  combined_data <- do.call(rbind, datalist)
  combined_data <- combined_data %>%
    rename(Company = company) %>%
    rename(`Executive Name` = executive_name) %>%
    rename(`Street Address` = street_name) %>%
    rename(`ZIP Code` = zip_code) %>%
    rename(`Phone Number` = phone_number) %>%
    rename(`Page` = page) %>% 
    rename(`Sales` = sales)
  
  combined_data <- separate(
    data = combined_data, col = city_name,
    into = c("City", "State"), sep = ", "
  )
  
  write.csv(combined_data, file = paste0(
    deparse(substitute(name_of_file)),
    "_refusa.csv"
  ), row.names = FALSE)
}
################################################################################
# END HIGHLIGHT ABOVE
# When successful, a "scrape" should appear in the environment on the right.

############### STEP 5 ###############
# Double check to make sure that the last column in reference USA is set to
# revenue if you want that data.
scrape(pages_scraped, replace_with_file_name)

# Example code below
# This code will scrape 5 pages and generate a file that begins with "bagels" 
scrape(5, bagels)

