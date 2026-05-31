# TabPanel

\`TabPanel.static()\` is an alias for \`TabPanel()\`, kept for backward
compatibility.

<https://mui.com/material-ui/api/tab-panel/>

## Usage

``` r
TabPanel(...)

TabPanel.static(...)

TabPanel.shinyInput(inputId, ..., value = defaultValue)

updateTabPanel.shinyInput(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)
```

## Arguments

- ...:

  Props to pass to the component.

- inputId:

  ID of the component.

- value:

  Starting value.

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- value `number| string`  
  Default is - The value of the corresponding Tab. Must use the index of
  the Tab when no value was passed to Tab.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- keepMounted `bool`  
  Default is FALSE Always keep the children in the DOM.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

## Note

`TabPanel` is part of
[`@mui/lab`](https://mui.com/material-ui/about-the-lab/), which is
published on the MUI beta channel. Lab APIs may change in future minor
releases.

`TabPanel` is a display-only component: it shows or hides its content
based on the active tab value held by the surrounding `TabContext`, but
never fires `onChange` from user interaction. As a result
`input$<inputId>` will always remain `NULL`. To react to tab changes on
the server, read `input$<inputId>` from the `TabList.shinyInput`
instead.
