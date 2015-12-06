library(maps)
library(mapproj)
counties <- readRDS("data/counties.rds")
source("helpers.R")

shinyServer(
    function(input, output) {
        
        output$map <- renderPlot({
            data <- switch(input$race, 
                           "Percent White" = counties$white,
                           "Percent Black" = counties$black,
                           "Percent Hispanic" = counties$hispanic,
                           "Percent Asian" = counties$asian)
            
            color <- switch(input$race, 
                            "Percent White" = "Orange",
                            "Percent Black" = "Dark Blue",
                            "Percent Hispanic" = "Dark Green",
                            "Percent Asian" = "Purple")
            
            min <- input$range[1]
            max <- input$range[2]
            
            percent_map(var = data, color = color, legend.title = input$race, max = max, min = min)
        })
    }
)