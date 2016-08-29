#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    wordcloud (txt_corp, scale=c(5,0.5), max.words=1, random.order=FALSE,
               rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))
    
  })
  
})
