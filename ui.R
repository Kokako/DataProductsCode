shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Body Mass Index (BMI) Calculator"),
        sidebarPanel(
            p(em("Instructions"),": Use the arrows or type to enter your height in feet and inches and your weight in pounds. Note that 
              if you are 5' 3'', enter '5' as your height (feet) and '3' as your height (inches)."),
            numericInput('heightft', 'Your height (feet)', 5, min = 0, max = 7, step = 1),
            numericInput('heightin', 'Your height (inches)', 3, min = 0, max = 11, step = 1),
            numericInput('weight', 'Your weight (lbs)', 120, min = 0, max = 300, step = 5),
            p(em("Description"),": This application calculates your body mass index, which is based on your height and weight.
              BMI is used as an indicator of a person's body fat percentage, as the two are correlated. 
              Weight status categories are assigned to BMI ranges; these do not vary by age or gender unless 
              the person is under age 20. Of course, exceptions to the rule exist (i.e., athletes may be 
              classifies as overweight as a result of their above-average muscle mass), but in general it is
              a useful screening tool to identify possible weight problems."),
            p(em("Source"),": ", a("Centers for Disease Control and Prevention.", href = "http://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/"))
        ),
        mainPanel(
            h3('Your measurements:'),
            textOutput("inputStats"),
            h3('Your body mass index:'),
            verbatimTextOutput("bmi"),
            h4('This BMI means that you are '),
            verbatimTextOutput("weightstatus")

        )
    )
)