shinyUI(pageWithSidebar(
  headerPanel("BMI calculator"),
  sidebarPanel(
    selectInput("Country", "Reference country", 
                list("Outside East Asia/ Southeast Asia" = "W", "China" = "CN", "Hong Kong" = "HK", "Japan" = "JP", "Singapore" = "SG"),                
                selected = "W"
                ),
    sliderInput('BMIweight', 'Your weight in kilogram',value = 60, min = 20, max = 200, step = 0.1,),
    sliderInput('BMIheight', 'Your height in centimeter',value = 170, min = 100, max = 250, step = 0.1,)
  ),
  mainPanel(
    h4("This calculator calculates your BMI and classifies it as normal, overweight and underweight according to the country you choose. Some countries in the East Asia/ Southeast Asia will choose lower values of BMI for classifying." ),    
    h4("Your BMI is:"),
    verbatimTextOutput("BMI"),
    h4("According to your reference country, your condition is:"),
    verbatimTextOutput("Condition")
  )
))
