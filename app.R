
library(shiny)

ui <- fluidPage(
  downloadLink("downloadData", "Download")
)

server <- function(input, output) {
  
  output$downloadData <- downloadHandler(
    filename = "your-pdf-name.pdf",
    content = function(file) {
      file.copy("www/teste.pdf", file)
    }
  )
}

shinyApp(ui, server)