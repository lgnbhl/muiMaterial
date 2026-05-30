# Autocomplete

The Autocomplete component provides a text input with suggested options
for single or multiple selection.

## Basic Usage

The recommended pattern is to pass a `TextField` as a child.

``` r

library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  CssBaseline(),
  Box(
    sx = list(p = 2),
    Autocomplete.shinyInput(
      inputId = "animal",
      options = c("dog", "cat", "fish", "bird", "rabbit"),
      TextField(label = "Select animal", placeholder = "Single select")
    ),
    verbatimTextOutput("selected")
  )
)

server <- function(input, output) {
  output$selected <- renderText({
    paste("Selected:", input$animal)
  })
}

shinyApp(ui, server)
```

## Multiple Selection

Set `multiple = TRUE` to allow selecting multiple values.

``` r

ui <- Autocomplete.shinyInput(
  inputId = "animals",
  multiple = TRUE,
  options = c("dog", "cat", "fish", "bird", "rabbit"),
  TextField(label = "Animals", placeholder = "Select multiple animals")
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

### Limit Tags

Use `limitTags` to control how many selected items are displayed before
showing a count.

``` r

ui <- Autocomplete.shinyInput(
  inputId = "animals",
  multiple = TRUE,
  limitTags = 2,
  options = c("dog", "cat", "fish", "bird", "rabbit"),
  TextField(label = "Animals", placeholder = "Select multiple animals")
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

## Styling

Use the `sx` argument for custom styling on the Autocomplete itself, and
configure the input via the child `TextField`.

``` r

ui <- Autocomplete.shinyInput(
  sx = list(m = 1, minWidth = 120, width = 300),
  inputId = "animal",
  options = c("dog", "cat", "fish"),
  TextField(label = "Choose your pet", placeholder = "Select an animal")
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

## Form Controls

Combine with `FormControl`, `FormLabel`, and `FormHelperText` for
enhanced forms.

``` r

ui <- FormControl(
  sx = list(m = 1, minWidth = 120, width = 300),
  FormLabel("Pet Selection"),
  Autocomplete.shinyInput(
    inputId = "pet",
    multiple = TRUE,
    limitTags = 2,
    options = c("dog", "cat", "fish", "bird"),
    TextField(placeholder = "Select multiple pets")
  ),
  FormHelperText("You can select multiple pets.")
)

server <- function(input, output, session) {}

shinyApp(ui, server)
```

## default `TextField` with `inputProps`

`inputProps` forwards props to a default `TextField` when no child is
supplied.

``` r

Autocomplete.shinyInput(
  inputId = "pet",
  multiple = TRUE,
  limitTags = 2,
  inputProps = list(placeholder = "Select multiple pets"),
  options = c("dog", "cat", "fish", "bird")
)
```

## Grouped Options

Use data frames with `groupBy` and `getOptionLabel` for grouped
selections.

**Note**: When using `groupBy` and `getOptionLabel`, define these as
static JavaScript functions to avoid injection vulnerabilities. Never
pass user input directly into
[`JS()`](https://appsilon.github.io/shiny.react/reference/JS.html).

``` r

library(shiny)
library(muiMaterial)
library(shiny.react)

df <- data.frame(
  animal = c("dog", "cat", "fish", "parrot", "goldfish"),
  category = c("mammal", "mammal", "fish", "bird", "fish"),
  stringsAsFactors = FALSE
)

ui <- muiMaterialPage(
  CssBaseline(),
  Box(
    sx = list(p = 2),
    Autocomplete.shinyInput(
      inputId = "grouped",
      options = df,
      groupBy = JS("function(option) { return option.category; }"),
      getOptionLabel = JS("function(option) { return option.animal; }"),
      TextField(label = "Animal", placeholder = "Select by category")
    ),
    tableOutput("result")
  )
)

server <- function(input, output) {
  output$result <- renderTable({
    as.data.frame(input$grouped)
  })
}

shinyApp(ui, server)
```

## Full Control with `renderInput`

For full control over the input, pass `renderInput` as a
[`JS()`](https://appsilon.github.io/shiny.react/reference/JS.html)
callback. This takes precedence over both child elements and
`inputProps`.

``` r

ui <- Autocomplete.shinyInput(
  inputId = "animal",
  options = c("dog", "cat", "fish"),
  renderInput = JS(
    "(params) => React.createElement(
       window.jsmodule['@mui/material'].TextField,
       { ...params, label: 'Animal', size: 'small' }
     )"
  )
)

server <- function(input, output) {}

shinyApp(ui, server)
```

## Custom Option with Secondary Text

Use `renderOption` with a data frame to display additional information
below each option label.

**Note**: Like `groupBy` and `getOptionLabel`, define `renderOption` as
a static JavaScript function. Never pass user input directly into
[`JS()`](https://appsilon.github.io/shiny.react/reference/JS.html).

``` r

library(shiny)
library(muiMaterial)
library(shiny.react)

df <- data.frame(
  label = c("dog", "cat", "fish", "parrot", "rabbit"),
  description = c(
    "Loyal and friendly companion",
    "Independent and curious",
    "Low maintenance aquatic pet",
    "Colorful and talkative bird",
    "Gentle and social small pet"
  ),
  stringsAsFactors = FALSE
)

ui <- muiMaterialPage(
  CssBaseline(),
  Box(
    sx = list(p = 2),
    Autocomplete.shinyInput(
      sx = list(minWidth = 300, width = 400),
      inputId = "pet",
      options = df,
      getOptionLabel = JS("function(option) { return option.label || ''; }"),
      renderOption = JS("function(props, option) {
        return React.createElement('li', props,
          React.createElement('div', null,
            React.createElement('div', null, option.label),
            React.createElement('div', {
              style: { fontSize: '0.8em', color: '#888' }
            }, option.description)
          )
        );
      }"),
      TextField(label = "Pet", placeholder = "Choose a pet")
    ),
    verbatimTextOutput("selected")
  )
)

server <- function(input, output) {
  output$selected <- renderText({
    paste("Selected:", input$pet$label)
  })
}

shinyApp(ui, server)
```

## Disable Clearable

Set `disableClearable = TRUE` to prevent clearing the selection.

``` r

ui <- Autocomplete.shinyInput(
  inputId = "animal",
  value = "cat",
  disableClearable = TRUE,
  options = c("dog", "cat", "fish"),
  TextField(label = "Animal")
)

server <- function(input, output) {}

shinyApp(ui, server)
```

## Default Value

Set an initial value using the `value` argument. The default is `NULL`
for single selection and `[]` (an empty list) for `multiple = TRUE`.

``` r

# Simple value
ui <- Autocomplete.shinyInput(
  inputId = "animal",
  value = "fish",
  options = c("dog", "cat", "fish"),
  TextField(label = "Animal")
)

server <- function(input, output) {}

shinyApp(ui, server)
```

The default should be in a [`list()`](https://rdrr.io/r/base/list.html)
for `multiple = TRUE`.

``` r

df <- data.frame(
  animal = c("dog", "cat", "fish"),
  owner = c("person1", "person1", "person2"),
  stringsAsFactors = FALSE
)

ui <- Autocomplete.shinyInput(
  inputId = "grouped",
  value = list(animal = "dog", owner = "person1"),
  options = df,
  groupBy = JS("function(option) { return option.owner; }"),
  getOptionLabel = JS("function(option) { return option.animal; }"),
  TextField(label = "Animal")
)

server <- function(input, output) {}

shinyApp(ui, server)
```
