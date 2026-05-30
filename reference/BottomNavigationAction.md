# BottomNavigationAction

<https://mui.com/material-ui/api/bottom-navigation-action/>

## Usage

``` r
BottomNavigationAction(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `unsupportedProp`  
  Default is NA This prop isn't supported. Use the component prop if you
  need to change the children structure.

- classes `object`  
  Default is NA Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- icon `node`  
  Default is NA The icon to display.

- label `node`  
  Default is NA The label element.

- showLabel `bool`  
  Default is NA If true, the BottomNavigationAction will show its label.
  By default, only the selected BottomNavigationAction inside
  BottomNavigation will show its label.The prop defaults to the value
  (false) inherited from the parent BottomNavigation component.

- sx `Array func| object| bool | func| object`  
  Default is NA The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `any`  
  Default is NA You can provide your own value. Otherwise, we fallback
  to the child position index.
