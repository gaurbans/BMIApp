library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculator"),
    sidebarPanel(
      numericInput('weight', 'Weight (kg)', 70),
      numericInput('height', 'height (m)', 2),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered a weight of'),
      verbatimTextOutput("inputValue1"),
      h4('You entered a height of'),
      verbatimTextOutput("inputValue2"),
      h4('Which resulted in a BMI Index of '),
      verbatimTextOutput("prediction")
    )
  )
)