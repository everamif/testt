ui <- fluidPage(
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30),
      checkboxInput("cb", "T/F"),
      actionButton("add_btn", "Add"),
      actionButton("delete_btn", "Delete")
    ),
    
    mainPanel(
      DTOutput("shiny_table")
    )
  )
)
