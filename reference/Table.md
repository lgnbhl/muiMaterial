# Table

<https://mui.com/material-ui/api/table/>

## Usage

``` r
Table(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the table, normally TableHead and
  TableBody.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- padding `'checkbox'| 'none'| 'normal'`  
  Default is 'normal' Allows TableCells to inherit padding of the Table.

- size `'medium'| 'small'| string`  
  Default is 'medium' Allows TableCells to inherit size of the Table.

- stickyHeader `bool`  
  Default is FALSE Set the header sticky.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
