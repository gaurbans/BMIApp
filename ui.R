library(shiny)
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI Calculator"),
    sidebarPanel(
      h5('Enter your weight and height to calculate your body mass index (BMI). Your BMI is your weight divided by your height squared: BMI=Weight/(Height^2)'),
      numericInput('weight', 'Weight (kg)', 70, step=.1),
      numericInput('height', 'height (m)', 2, step=.01),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results'),
      h4('You entered a weight of'),
      verbatimTextOutput("inputValue1"),
      h4('You entered a height of'),
      verbatimTextOutput("inputValue2"),
      h3('Calculated BMI Index'),
      verbatimTextOutput("prediction")
    )
  )
)