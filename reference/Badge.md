# Badge

<https://mui.com/material-ui/api/badge/>

## Usage

``` r
Badge(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- anchorOrigin
  `{ horizontal?: 'left'| 'right', vertical?: 'bottom'| 'top' }`  
  Default is vertical: 'top', horizontal: 'right', The anchor of the
  badge.

- badgeContent `node`  
  Default is - The content rendered within the badge.

- children `node`  
  Default is - The badge will be added relative to this node.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'default' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- components `{ Badge?: elementType, Root?: elementType }`  
  Default is The components used for each slot inside.Deprecated use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps `{ badge?: func| object, root?: func| object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- invisible `bool`  
  Default is FALSE If true, the badge is invisible.

- max `number`  
  Default is 99 Max count to show.

- overlap `'circular'| 'rectangular'`  
  Default is 'rectangular' Wrapped shape the badge should overlap.

- showZero `bool`  
  Default is FALSE Controls whether the badge is hidden when
  badgeContent is zero.

- slotProps `{ badge?: func| object, root?: func| object }`  
  Default is The props used for each slot inside the Badge.

- slots `{ badge?: elementType, root?: elementType }`  
  Default is The components used for each slot inside the Badge. Either
  a string to use a HTML element or a component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'dot'| 'standard'| string`  
  Default is 'standard' The variant to use.
