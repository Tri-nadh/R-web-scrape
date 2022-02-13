library(rvest)
rwiki<-'https://en.wikipedia.org/wiki/List_of_circulating_currencies'
countries<-rwiki %>% 
  read_html(rwiki) %>% 
  html_element('table')%>% 
  html_table()
write.csv(countries,"C:/Users/HP/Desktop/scrap/contrycourency//countrycourency.csv")