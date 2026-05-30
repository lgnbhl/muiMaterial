# IconButton

<https://mui.com/material-ui/api/icon-button/>

## Usage

``` r
IconButton(...)

IconButton.shinyInput(inputId, ...)

updateIconButton.shinyInput(
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

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The icon to display.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'inherit'| 'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'default' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableFocusRipple `bool`  
  Default is FALSE If true, the keyboard focus ripple is disabled.

- disableRipple `bool`  
  Default is FALSE If true, the ripple effect is disabled. Without a
  ripple there is no styling for :focus-visible by default. Be sure to
  highlight the element by applying separate styles with the
  .Mui-focusVisible class.

- edge `'end'| 'start'| false`  
  Default is FALSE If given, uses a negative margin to counteract the
  padding on one side (this is often helpful for aligning the left or
  right side of the icon with content above or below, without ruining
  the border size and shape).

- loading `bool`  
  Default is null If true, the loading indicator is visible and the
  button is disabled. If true \| false, the loading wrapper is always
  rendered before the children to prevent Google Translation Crash.

- loadingIndicator `node`  
  Default is CircularProgress color="inherit" size=16 / Element placed
  before the children if the button is in loading state. The node should
  contain an element with role="progressbar" with an accessible name. By
  default, it renders a CircularProgress that is labeled by the button
  itself.

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component. small is equivalent to
  the dense button styling.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
