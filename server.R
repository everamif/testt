server <- function(input, output) {
  
  this_table <- reactiveVal(this_table)
  
  observeEvent(input$add_btn, {
    t = rbind(data.frame(bins = input$bins,
                         cb = input$cb), this_table())
    this_table(t)
  })
  
  observeEvent(input$delete_btn, {
    t = this_table()
    print(nrow(t))
    if (!is.null(input$shiny_table_rows_selected)) {
      t <- t[-as.numeric(input$shiny_table_rows_selected),]
    }
    this_table(t)
  })
  
  output$shiny_table <- renderDT({
    datatable(this_table(), selection = 'single', options = list(dom = 't'))
  })
}

