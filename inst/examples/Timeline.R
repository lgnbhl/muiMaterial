library(shiny)
library(muiMaterial)

# https://mui.com/material-ui/react-timeline/#customized-timeline

ui_Timeline <- muiMaterialPage(
  Timeline(
    position = "alternate",
    TimelineItem(
      TimelineOppositeContent(
        sx = list(m = "auto 0"),
        align = "right",
        variant = "body2",
        color = "text.secondary",
        "9:30 am"
      ),
      TimelineSeparator(
        TimelineConnector(),
        TimelineDot(
          shiny::icon("utensils")
        ),
        TimelineConnector()
      ),
      TimelineContent(
        sx = list(py = "12px", px = 2),
        Typography(variant = "h6", component = "span", "Eat"),
        Typography("Because you need strength")
      )
    ),
    TimelineItem(
      TimelineOppositeContent(
        sx = list(m = "auto 0"),
        variant = "body2",
        color = "text.secondary",
        "10:00 am"
      ),
      TimelineSeparator(
        TimelineConnector(),
        TimelineDot(
          color = "primary",
          shiny::icon("laptop")
        ),
        TimelineConnector()
      ),
      TimelineContent(
        sx = list(py = "12px", px = 2),
        Typography(variant = "h6", component = "span", "Code"),
        Typography("Because it's awesome!")
      )
    ),
    TimelineItem(
      TimelineSeparator(
        TimelineConnector(),
        TimelineDot(
          color = "primary",
          variant = "outlined",
          shiny::icon("bed")
        ),
        TimelineConnector(sx = list(bgcolor = "secondary.main"))
      ),
      TimelineContent(
        sx = list(py = "12px", px = 2),
        Typography(variant = "h6", component = "span", "Sleep"),
        Typography("Because you need rest")
      )
    ),
    TimelineItem(
      TimelineSeparator(
        TimelineConnector(sx = list(bgcolor = "secondary.main")),
        TimelineDot(
          color = "secondary",
          shiny::icon("redo")
        ),
        TimelineConnector()
      ),
      TimelineContent(
        sx = list(py = "12px", px = 2),
        Typography(variant = "h6", component = "span", "Repeat"),
        Typography("Because this is the life you love!")
      )
    )
  )
)

server_Timeline <- function(input, output, session) {}

shinyApp(ui_Timeline, server_Timeline)
