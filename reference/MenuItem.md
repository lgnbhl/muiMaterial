# MenuItem

<https://mui.com/material-ui/api/menu-item/>

## Usage

``` r
MenuItem(...)

MenuItem.shinyInput(inputId, ...)

updateMenuItem.shinyInput(
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

- autoFocus `bool`  
  Default is FALSE If true, the list item is focused during the first
  mount. Focus will also be triggered if the value changes from false to
  true.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- dense `bool`  
  Default is FALSE If true, compact vertical padding designed for
  keyboard and mouse input is used. The prop defaults to the value
  inherited from the parent Menu component.

- disableGutters `bool`  
  Default is FALSE If true, the left and right padding is removed.

- divider `bool`  
  Default is FALSE If true, a 1px light border is added to the bottom of
  the menu item.

- focusVisibleClassName `string`  
  Default is - This prop can help identify which element has keyboard
  focus. The class name will be applied when the element gains the focus
  through keyboard interaction. It's a polyfill for the CSS
  :focus-visible selector. The rationale for using this feature is
  explained here. A polyfill can be used to apply a focus-visible class
  to other components if needed.

- selected `bool`  
  Default is FALSE If true, the component is selected.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
