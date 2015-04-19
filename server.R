bmiCalculation <- function(height, weight) weight / (height)^2 *703

shinyServer(
    function(input, output) {
        height <- reactive(input$heightft*12 + input$heightin)
        bmi <- reactive(round(bmiCalculation(height(), input$weight), digits=1))
        output$inputStats <- renderText({paste("You are ", height()," inches tall and weigh ", input$weight, " lbs.")})
        output$bmi <- renderText({bmi()})
        
        output$weightstatus <- renderText({
            if(bmi()<18.5) "underweight"
            else if(bmi()>=18.5 & bmi()<=24.9) "normal"
            else if(bmi()>=25.0 & bmi()<=29.9) "overweight"
            else "obese"
        })
    }
)