# Breadcrumbs

<https://mui.com/material-ui/api/breadcrumbs/>

## Usage

``` r
Breadcrumbs(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- expandText `string`  
  Default is 'Show path' Override the default label for the expand
  button.For localization purposes, you can use the provided
  translations.

- itemsAfterCollapse `integer`  
  Default is 1 If max items is exceeded, the number of items to show
  after the ellipsis.

- itemsBeforeCollapse `integer`  
  Default is 1 If max items is exceeded, the number of items to show
  before the ellipsis.

- maxItems `integer`  
  Default is 8 Specifies the maximum number of breadcrumbs to display.
  When there are more than the maximum number, only the first
  itemsBeforeCollapse and last itemsAfterCollapse will be shown, with an
  ellipsis in between.

- separator `node`  
  Default is '/' Custom separator node.

- slotProps `{ collapsedIcon?: func| object }`  
  Default is The props used for each slot inside the Breadcumb.

- slots `{ CollapsedIcon?: elementType }`  
  Default is The components used for each slot inside the Breadcumb.
  Either a string to use a HTML element or a component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
