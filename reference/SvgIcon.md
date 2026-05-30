# SvgIcon

<https://mui.com/material-ui/api/svg-icon/>

## Usage

``` r
SvgIcon(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - Node passed into the SVG element.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'inherit'| 'action'| 'disabled'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'inherit' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide. You can use the htmlColor prop to apply a
  color attribute to the SVG element.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- fontSize `'inherit'| 'large'| 'medium'| 'small'| string`  
  Default is 'medium' The fontSize applied to the icon. Defaults to
  24px, but can be configure to inherit font size.

- htmlColor `string`  
  Default is - Applies a color attribute to the SVG element.

- inheritViewBox `bool`  
  Default is FALSE If true, the root node will inherit the custom
  component's viewBox and the viewBox prop will be ignored. Useful when
  you want to reference a custom component and have SvgIcon pass that
  component's viewBox to the root node.

- shapeRendering `string`  
  Default is - The shape-rendering attribute. The behavior of the
  different options is described on the MDN Web Docs. If you are having
  issues with blurry icons you should investigate this prop.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- titleAccess `string`  
  Default is - Provides a human-readable title for the element that
  contains it. https://www.w3.org/TR/SVG-access/#Equivalent

- viewBox `string`  
  Default is '0 0 24 24' Allows you to redefine what the coordinates
  without units mean inside an SVG element. For example, if the SVG
  element is 500 (width) by 200 (height), and you pass viewBox="0 0 50
  20", this means that the coordinates inside the SVG will go from the
  top left corner (0,0) to bottom right (50,20) and each unit will be
  worth 10px.
