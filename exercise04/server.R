shinyServer(function(input, output) {
    
    output$textRace <- renderText({ 
        paste("You have selected", input$race)
    })
    
    output$textRange <- renderText({
        paste("You have chosen a range that goes from", input$range[1], "to", input$range[2])
    })
}
)