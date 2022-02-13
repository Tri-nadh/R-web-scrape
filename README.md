# R-web-scrape
Scraping Wikipedia Table Using R

**Introduction to web scraping:**

We know that the Internet contains all information in the form of web pages written in **HTML** code. So the web has a lot of data contained in it, those data might be useful for different purposes. For instance, I want to know the details about iPhone 13 pro from different unique web pages, relating to the price of the phone, display quality and the total review of the mobile phone. I'll store this gathered information in different file formats. By using this data I can make insights like bar charts, pie charts or maybe I can predict the future price of the iPhone 13 pro max. So we can do anything using data, this process is called web scraping. 

**process:**

This is the whole code, don't need to worry if you did not get it, I will explain every line further.

#Step 1 

install.packages("rvest")

library(rvest)

#Step 2

rwiki<-'https://en.wikipedia.org/wiki/List_of_circulating_currencies'

#Step 3

countries<-rwiki %>%

read_html(rwiki) %>%

html_element('table')%>%

html_table()

#Step4

write.csv(countries,"C:/Users/HP/Desktop/scrap/contrycourency//countrycourency.csv")

**Step1:** rvest is an R library used by most to scrape web pages. To install this package we use install.packages("rvest") and to run the package it needs to be activated for that, activate the package by running this code library(rvest). Now the package is activated so we can use elements of this package.

**Step2**: I have taken a variable rwiki to store the web page link and I assigned the link to the variable by using the assignment operator in a string format.

**Step3:** For step3 I will write the whole code in a single line so it will be easy to explain.

#Step 3

countries<-rwiki %>% read_html(rwiki) %>% html_element('table')%>% html_table()

So what I have done in this step is

- to read and import the total HTML code of the Wikipedia page, I used read_html(rwiki). Here rwiki is the variable which I stored the page link.

-  On this web page, there are two tables but we want the first table only. So we just need to identify the table tag <table> by default it will select the first table of the web page. I used this html_element('table') to find the table tag from the total web page HTML code.
  
  - If you want both tables from the page you can use html_elements('table') or for selecting the second table only mention the class of the second table as this html_element('.class')
  
- to print the table I used html_table().
  
I stored every line of step3 in a variable called countries.

  
**Step4:** As a conclusion, we need to store this table in a file, I have stored it in a csv( comma-separated values) for that use this format of code.
  
write.csv(countries,"path of the file//filename.csv")
  
you can also save in excel format but for that, you need to install writexl and follow the above line to save.
  
install.packages("writexl")
  
library(writexl)
  
write_xlsx(countries,"path of the file//filename.csv")
  
To know more about rvest package go to the official webpage.
