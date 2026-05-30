# Tab

<https://mui.com/material-ui/api/tab/>

## Usage

``` r
Tab(...)

Tab.shinyInput(inputId, ..., value = defaultValue)

updateTab.shinyInput(session = shiny::getDefaultReactiveDomain(), inputId, ...)
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

- children `unsupportedProp`  
  Default is - This prop isn't supported. Use the component prop if you
  need to change the children structure.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableFocusRipple `bool`  
  Default is FALSE If true, the keyboard focus ripple is disabled.

- disableRipple `bool`  
  Default is FALSE If true, the ripple effect is disabled. Without a
  ripple there is no styling for :focus-visible by default. Be sure to
  highlight the element by applying separate styles with the
  .Mui-focusVisible class.

- icon `element| string`  
  Default is - The icon to display.

- iconPosition `'bottom'| 'end'| 'start'| 'top'`  
  Default is 'top' The position of the icon relative to the label.

- label `node`  
  Default is - The label element.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `any`  
  Default is - You can provide your own value. Otherwise, we fallback to
  the child position index.

- wrapped `bool`  
  Default is FALSE Tab labels appear in a single row. They can use a
  second line if needed.
