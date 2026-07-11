library(shiny)
library(muiMaterial)

ui_TransferList <- muiMaterialPage(
  CssBaseline(),
  Container(
    sx = list(py = 4),
    Typography("Transfer List", variant = "h4", sx = list(mb = 3)),

    Grid(
      container = TRUE,
      spacing = 2,
      justifyContent = "center",
      alignItems = "center",

      # Left list
      Grid(
        size = list(xs = 5),
        Card(
          sx = list(height = 400, overflow = "auto"),
          CardHeader(title = "Available"),
          List(
            dense = TRUE,
            id = "left_list",
            reactOutput("left_list_items")
          )
        )
      ),

      # Control buttons
      Grid(
        size = list(xs = 2),
        Stack(
          spacing = 2,
          alignItems = "center",
          Button.shinyInput(
            "move_right",
            variant = "outlined",
            sx = list(minWidth = 100),
            ">"
          ),
          Button.shinyInput(
            "move_left",
            variant = "outlined",
            sx = list(minWidth = 100),
            "<"
          ),
          Button.shinyInput(
            "move_all_right",
            variant = "outlined",
            sx = list(minWidth = 100),
            ">>"
          ),
          Button.shinyInput(
            "move_all_left",
            variant = "outlined",
            sx = list(minWidth = 100),
            "<<"
          )
        )
      ),

      # Right list
      Grid(
        size = list(xs = 5),
        Card(
          sx = list(height = 400, overflow = "auto"),
          CardHeader(title = "Selected"),
          List(
            dense = TRUE,
            id = "right_list",
            reactOutput("right_list_items")
          )
        )
      )
    )
  )
)

server_TransferList <- function(input, output, session) {
  # Initialize data
  left_items <- reactiveVal(c("Task 1", "Task 2", "Task 3", "Task 4", "Task 5"))
  right_items <- reactiveVal(character(0))

  left_checked <- reactiveVal(character(0))
  right_checked <- reactiveVal(character(0))

  # Serialize an R string into a JS string literal, so item labels containing
  # quotes or backslashes cannot break the onClick handler below.
  js_str <- function(x) {
    paste0('"', gsub('"', '\\\\"', gsub("\\\\", "\\\\\\\\", x)), '"')
  }

  # One clickable row per item. Row clicks fire a single custom event
  # carrying the item as payload (rather than one .shinyInput per row)
  # because the rows are re-generated on every move. The server state is the
  # single source of truth: the plain Checkbox is controlled by `checked`
  # and each renderReact() pushes the state back down; the noop `onChange`
  # marks it controlled for React while the row's onClick does the toggling
  # (a click on the checkbox bubbles up to the row).
  transfer_row <- function(item, checked, event) {
    ListItemButton(
      key = item,
      onClick = JS(sprintf(
        "() => Shiny.setInputValue('%s', %s, {priority: 'event'})",
        event, js_str(item)
      )),
      ListItemIcon(
        Checkbox(
          checked = item %in% checked,
          onChange = JS("() => {}"),
          edge = "start",
          tabIndex = -1,
          disableRipple = TRUE
        )
      ),
      ListItemText(primary = item)
    )
  }

  # Render left list
  output$left_list_items <- renderReact({
    lapply(left_items(), transfer_row, checked = left_checked(), event = "left_toggle")
  })

  # Render right list
  output$right_list_items <- renderReact({
    lapply(right_items(), transfer_row, checked = right_checked(), event = "right_toggle")
  })

  # Toggle left checkboxes
  observeEvent(input$left_toggle, {
    item <- input$left_toggle
    checked <- left_checked()
    if (item %in% checked) {
      left_checked(setdiff(checked, item))
    } else {
      left_checked(c(checked, item))
    }
  })

  # Toggle right checkboxes
  observeEvent(input$right_toggle, {
    item <- input$right_toggle
    checked <- right_checked()
    if (item %in% checked) {
      right_checked(setdiff(checked, item))
    } else {
      right_checked(c(checked, item))
    }
  })

  # Move checked items to right
  observeEvent(input$move_right, {
    checked <- left_checked()
    if (length(checked) > 0) {
      left_items(setdiff(left_items(), checked))
      right_items(c(right_items(), checked))
      left_checked(character(0))
    }
  })

  # Move checked items to left
  observeEvent(input$move_left, {
    checked <- right_checked()
    if (length(checked) > 0) {
      right_items(setdiff(right_items(), checked))
      left_items(c(left_items(), checked))
      right_checked(character(0))
    }
  })

  # Move all items to right
  observeEvent(input$move_all_right, {
    right_items(c(right_items(), left_items()))
    left_items(character(0))
    left_checked(character(0))
  })

  # Move all items to left
  observeEvent(input$move_all_left, {
    left_items(c(left_items(), right_items()))
    right_items(character(0))
    right_checked(character(0))
  })
}

if (interactive()) {
  shinyApp(ui = ui_TransferList, server = server_TransferList)
}
