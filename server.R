BPCat <- function(Systolic, Diastolic) {

  if (Systolic <= 120) {
    SysGrp <- 1
  } else if (Systolic > 120 & Systolic <=139) {
    SysGrp <- 2
  } else if (Systolic > 139 & Systolic <=159) {
    SysGrp <- 3
  } else if (Systolic > 159 & Systolic <=179) {
    SysGrp <- 4
  } else if (Systolic > 179) {
    SysGrp <- 5
  }

  if (Diastolic <= 80) {
    DiasGrp <- 1
  } else if (Diastolic > 80 & Diastolic <=89) {
    DiasGrp <- 2
  } else if (Diastolic > 89 & Diastolic <=99) {
    DiasGrp <- 3
  } else if (Diastolic > 99 & Diastolic <=100) {
    DiasGrp <- 4
  } else if (Diastolic > 100) {
    DiasGrp <- 5
  }

  if (SysGrp == 5 | DiasGrp == 5) {
    "Hypertensive Crisis"
  } else if (SysGrp == 4 | DiasGrp == 4) {
    "Hypertension Stage II"
  } else if (SysGrp == 3 | DiasGrp == 3) {
    "Hypertension Stage I"
  } else if (SysGrp == 2 | DiasGrp == 2) {
    "Prehypertension"
  } else if (SysGrp == 1 & DiasGrp == 1) {
    "Normal"
  }

}
shinyServer(function(input, output) {
  output$InputValue1 <- renderPrint({input$Systolic})
  output$InputValue2 <- renderPrint({input$Diastolic})
  output$category <- renderPrint({BPCat(input$Systolic, input$Diastolic)})
})