# PaginationItem

<https://mui.com/material-ui/api/pagination-item/>

## Usage

``` r
PaginationItem(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color `'primary'| 'secondary'| 'standard'| string`  
  Default is 'standard' The active color. It supports both default and
  custom theme colors, which can be added as shown in the palette
  customization guide.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- components
  `{ first?: elementType, last?: elementType, next?: elementType, previous?: elementType }`  
  Default is The components used for each slot inside.This prop is an
  alias for the slots prop. It's recommended to use the slots prop
  instead.Deprecated use the slots prop instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- page `node`  
  Default is - The current page number.

- selected `bool`  
  Default is FALSE If true the pagination item is selected.

- shape `'circular'| 'rounded'`  
  Default is 'circular' The shape of the pagination item.

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component.

- slotProps
  `{ first?: func| object, last?: func| object, next?: func| object, previous?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ first?: elementType, last?: elementType, next?: elementType, previous?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- type
  `'end-ellipsis'| 'first'| 'last'| 'next'| 'page'| 'previous'| 'start-ellipsis'`  
  Default is 'page' The type of pagination item.

- variant `'outlined'| 'text'| string`  
  Default is 'text' The variant to use.
