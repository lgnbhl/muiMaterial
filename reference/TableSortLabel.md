# TableSortLabel

<https://mui.com/material-ui/api/table-sort-label/>

## Usage

``` r
TableSortLabel(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- active `bool`  
  Default is FALSE If true, the label will have the active styling
  (should be true for the sorted column).

- children `node`  
  Default is - Label contents, the arrow will be appended automatically.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- direction `'asc'| 'desc'`  
  Default is 'asc' The current sort direction.

- hideSortIcon `bool`  
  Default is FALSE Hide sort icon when active is false.

- IconComponent `elementType`  
  Default is ArrowDownwardIcon Sort icon to use.

- slotProps `{ icon?: func| object, root?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ icon?: elementType, root?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
