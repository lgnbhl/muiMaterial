# Dialog.triggerId

Custom Dialog bound to a DOM element by id. See
'js/src/MuiDialogTriggerId.jsx'. Open/close state is managed entirely
client-side, so this works in Shiny apps, Quarto documents, and static
HTML without server logic.

## Usage

``` r
Dialog.triggerId(triggerId, ...)
```

## Arguments

- triggerId:

  HTML id of an existing DOM element that acts as the trigger to open
  the Dialog.

- ...:

  Named arguments forwarded as React props, plus children to render
  inside the component.

## Value

Object with \`shiny.tag\` class suitable for use in the UI of a Shiny
app.

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  Button(id = "openDialog", "Open dialog"),
  Dialog.triggerId(
    "openDialog",
    DialogTitle("Hello"),
    DialogContent("Open/close managed entirely client-side.")
  )
)

shinyApp(ui, function(input, output, session) {})
}
```
