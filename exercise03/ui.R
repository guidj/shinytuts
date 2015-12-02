shinyUI(fluidPage(
    titlePanel("censusVis"),
    sidebarLayout(
        position="left",
        sidebarPanel(
            p("Create demographic maps from 2010 US Census."),
            selectInput("select", 
                        label = p("Choose a variable to display:"), 
                        choices = list("Percent White" = 1, "Percent Black" = 2,
                                       "Percent Hispanic" = 3, "Percent Asian" = 4), 
                        selected = 1),
            sliderInput("slider", 
                        label = p("Range of interest:"),
                        min = 0, max = 100, value = 100)
            
            
        ),        
        mainPanel()
    )
    
))