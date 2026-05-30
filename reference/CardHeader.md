# CardHeader

<https://mui.com/material-ui/api/card-header/>

## Usage

``` r
CardHeader(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- action `node`  
  Default is - The action to display in the card header.

- avatar `node`  
  Default is - The Avatar element to display.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disableTypography `bool`  
  Default is FALSE If true, subheader and title won't be wrapped by a
  Typography component. This can be useful to render an alternative
  Typography variant by wrapping the title text, and optional subheader
  text with the Typography component.

- slotProps
  `{ action?: func| object, avatar?: func| object, content?: func| object, root?: func| object, subheader?: func| object, title?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ action?: elementType, avatar?: elementType, content?: elementType, root?: elementType, subheader?: elementType, title?: elementType }`  
  Default is The components used for each slot inside.

- subheader `node`  
  Default is - The content of the component.

- subheaderTypographyProps `object`  
  Default is - These props will be forwarded to the subheader (as long
  as disableTypography is not true).Deprecated Use slotProps.subheader
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- title `node`  
  Default is - The content of the component.

- titleTypographyProps `object`  
  Default is - These props will be forwarded to the title (as long as
  disableTypography is not true).Deprecated Use slotProps.title instead.
  This prop will be removed in a future major release. See Migrating
  from deprecated APIs for more details.
