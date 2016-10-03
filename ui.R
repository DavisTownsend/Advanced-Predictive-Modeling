fluidPage(    
  
  # Give the page a title
  titlePanel("Telephones by region"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      checkboxGroupInput("variable", "Filter by Variable", c('Region','Year'), selected = 'Region'),
      selectInput("region", "Region:",
                  choices=colnames(WorldPhones)),
      selectInput("year", "Year:", 
                  choices=rownames(WorldPhones)),
      hr(),
      helpText("Data from AT&T (1961) The World's Telephones.")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("Teleplot")  
    )
    
  )
)