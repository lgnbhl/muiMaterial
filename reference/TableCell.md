# TableCell

<https://mui.com/material-ui/api/table-cell/>

## Usage

``` r
TableCell(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- align `'center'| 'inherit'| 'justify'| 'left'| 'right'`  
  Default is 'inherit' Set the text-align on the table cell
  content.Monetary or generally number fields should be right aligned as
  that allows you to add them up quickly in your head without having to
  worry about decimals.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- padding `'checkbox'| 'none'| 'normal'`  
  Default is - Sets the padding applied to the cell. The prop defaults
  to the value ('default') inherited from the parent Table component.

- scope `string`  
  Default is - Set scope attribute.

- size `'medium'| 'small'| string`  
  Default is - Specify the size of the cell. The prop defaults to the
  value ('medium') inherited from the parent Table component.

- sortDirection `'asc'| 'desc'| false`  
  Default is - Set aria-sort direction.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'body'| 'footer'| 'head'| string`  
  Default is - Specify the cell type. The prop defaults to the value
  inherited from the parent TableHead, TableBody, or TableFooter
  components.
