shinyUI(fluidPage(
    titlePanel("My Shiny App"),
    sidebarLayout(
        position = "left",
        sidebarPanel(
            h2("Installation"),
            p("Shiny is available on CRAN, so you can install it in the usual way from your R console:"),
            code("install.packages(\"shiny\")"),
            p(),
            br(),
            p(),
            br(),
            p(),
            br(),
            p(img(src="img/bigorb.png", width=100, height=100), "shiny is a product of ", a("RStudio", href="https://www.rstudio.com/"))
            ),
        mainPanel(
            h1("Introducing Shiny"),
            p("Shiny is a new package from RStudio that makes it ", em("incredibly easy "), "to build interactive web applicatoins with R."),
            br(),
            p("For an introduction and live examples visit the ", a("Shiny homepage", href="http://shiny.rstudio.com")),
            br(),
            p(),
            br(),
            h2("Features"),
            tags$ul(
                tags$li("Build useful web applications with only a few lines of code - no JavaScript required."),
                tags$li("Shiny applications are automatically \"live\" in the same way that ", strong("spreadsheets"), "are live. 
                   Outputs change instantly as users modify inputs, without requiring a reload of the browser.") 
            )
        )
    )
))