shinyUI(
  pageWithSidebar(
    # Application Title
    titlePanel("Patient's Blood Pressure Category"),
   
    sidebarPanel(
      h4("Enter Patient's Blood Pressure Measurements"),
      numericInput('Systolic', 'Systolic mm Hg', 120, min = 50, max = 240, step = 1),
      numericInput('Diastolic', 'Diastolic mm Hg', 80, min = 50, max = 140, step = 1),
      submitButton('Submit')
    ),
    mainPanel(
      h3("Results for Patient's Blood Pressure"),
      h4('Entered Systolic / Diastolic'),
      verbatimTextOutput("InputValue1"),
      verbatimTextOutput("InputValue2"),
      h4('Blood Pressure Category '),
      verbatimTextOutput("category")
    )
  )
)