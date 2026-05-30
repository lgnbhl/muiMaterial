# ListItemText

<https://mui.com/material-ui/api/list-item-text/>

## Usage

``` r
ListItemText(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - Alias for the primary prop.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- disableTypography `bool`  
  Default is FALSE If true, the children won't be wrapped by a
  Typography component. This can be useful to render an alternative
  Typography variant by wrapping the children (or primary) text, and
  optional secondary text with the Typography component.

- inset `bool`  
  Default is FALSE If true, the children are indented. This should be
  used if there is no left avatar or left icon.

- primary `node`  
  Default is - The main content element.

- primaryTypographyProps `object`  
  Default is - These props will be forwarded to the primary typography
  component (as long as disableTypography is not true).Deprecated Use
  slotProps.primary instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- secondary `node`  
  Default is - The secondary content element.

- secondaryTypographyProps `object`  
  Default is - These props will be forwarded to the secondary typography
  component (as long as disableTypography is not true).Deprecated Use
  slotProps.secondary instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- slotProps
  `{ primary?: func| object, root?: func| object, secondary?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ primary?: elementType, root?: elementType, secondary?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
