# Exercise 2: a basic Shiny app

# Load the `shiny` package
library("shiny")


my_ui <- fluidPage(
  titlePanel("Cost Calculator"),
  numericInput(inputId = "Price",label = "Price (in dollars)", value=0, min=0),
  numericInput(inputId = "Quantity",label="Quantity",value=1, min=1) ,
  p(strong("Cost")),
  textOutput(outputId="cost")
)
my_server <- function(input_list,output_list) {
  output_list$cost <- renderText({
    message <- input_list$Price * input_list$Quantity
    return(message)   
  })
}

shinyApp(ui = my_ui,server = my_server)
