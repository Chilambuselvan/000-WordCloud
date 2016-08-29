#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(tm)
library(wordcloud)
library(RColorBrewer)
library(shiny)
FrNames = "F:/Analytics/000-WordCloud/smaple.txt"

txt_lines = readLines(FrNames)
txt_corpus<-Corpus(VectorSource(txt_lines))
  
  #txt_corp<-tm_map(txt_corpus,stripWhitespace)
  #txt_corp<-tm_map(txt_corp,tolower)
  #txt_corp<-tm_map(txt_corp,removeNumbers)
  #txt_corp<-tm_map(txt_corp,removePunctuation)
  #txt_corp<-tm_map(txt_corp,removeWords, stopwords("english"))
  #tdm_txt<-TermDocumentMatrix (txt_corp) #Creates a TDM
  #TDM1<-as.matrix(tdm_txt) #Convert this into a matrix format
  #v = sort(rowSums(TDM1), decreasing = TRUE)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 50,
                   value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
