# ListItemButton

<https://mui.com/material-ui/api/list-item-button/>

## Usage

``` r
ListItemButton(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- alignItems `'center'| 'flex-start'`  
  Default is 'center' Defines the align-items style property.

- autoFocus `bool`  
  Default is FALSE If true, the list item is focused during the first
  mount. Focus will also be triggered if the value changes from false to
  true.

- children `node`  
  Default is - The content of the component if a ListItemSecondaryAction
  is used it must be the last child.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- dense `bool`  
  Default is FALSE If true, compact vertical padding designed for
  keyboard and mouse input is used. The prop defaults to the value
  inherited from the parent List component.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableGutters `bool`  
  Default is FALSE If true, the left and right padding is removed.

- divider `bool`  
  Default is FALSE If true, a 1px light border is added to the bottom of
  the list item.

- focusVisibleClassName `string`  
  Default is - This prop can help identify which element has keyboard
  focus. The class name will be applied when the element gains the focus
  through keyboard interaction. It's a polyfill for the CSS
  :focus-visible selector. The rationale for using this feature is
  explained here. A polyfill can be used to apply a focus-visible class
  to other components if needed.

- selected `bool`  
  Default is FALSE Use to apply selected styling.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
