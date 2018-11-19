library(shiny)

server <- function(input, output, session) {
  ip <- "ip addr show eth0 | grep 'inet\\b' | awk '{print $2}' | cut -d/ -f1"
  ip <- "xD"
  ip <- "ipconfig"
  output$txt <- renderPrint({
    system(ip, intern = TRUE)
  })
}
