library(shiny)
library(DT)

this_table = data.frame(bins = c(30, 50), cb = c(T, F))

shinyApp(ui = ui, server = server)
