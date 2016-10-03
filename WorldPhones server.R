library(datasets)

function(input, output) {
  
  output$Teleplot <- renderPlot({
    
    if (input$variable == 'Region') {
      # Render Region barplot
      barplot(WorldPhones[,input$region], 
              main=input$region,
              ylab="Number of Telephones (in thousands)",
              xlab="Year",
              col = "steelblue4",
              border = "grey0",
              #standardize y axis across all regions
              ylim = c(0,80000))
    }
    else {
      #render Year barplot
      barplot(WorldPhones[input$year,], 
              main=input$year,
              ylab="Number of Telephones (in thousands)",
              xlab="Region",
              col = "steelblue4",
              border = "grey0",
              #standardize y axis across all regions
              ylim = c(0,80000))
    }
    
  })
}