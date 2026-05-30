# Pagination

<https://mui.com/material-ui/api/pagination/>

## Usage

``` r
Pagination(...)

Pagination.shinyInput(inputId, ..., value = defaultValue)

updatePagination.shinyInput(
  session = shiny::getDefaultReactiveDomain(),
  inputId,
  ...
)
```

## Arguments

- ...:

  Props to pass to the component.

- inputId:

  ID of the component.

- value:

  Starting value.

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- boundaryCount `integer`  
  Default is 1 Number of always visible pages at the beginning and end.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color `'primary'| 'secondary'| 'standard'| string`  
  Default is 'standard' The active color. It supports both default and
  custom theme colors, which can be added as shown in the palette
  customization guide.

- count `integer`  
  Default is 1 The total number of pages.

- defaultPage `integer`  
  Default is 1 The page selected by default when the component is
  uncontrolled.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- getItemAriaLabel `func`  
  Default is - Accepts a function which returns a string value that
  provides a user-friendly name for the current page. This is important
  for screen reader users.For localization purposes, you can use the
  provided translations.Signature:function(type: string, page: number \|
  null, selected: boolean) = stringtype The link or button type to
  format ('page' \| 'first' \| 'last' \| 'next' \| 'previous' \|
  'start-ellipsis' \| 'end-ellipsis'). Defaults to 'page'.page The page
  number to format.selected If true, the current page is selected.

- hideNextButton `bool`  
  Default is FALSE If true, hide the next-page button.

- hidePrevButton `bool`  
  Default is FALSE If true, hide the previous-page button.

- onChange `func`  
  Default is - Callback fired when the page is
  changed.Signature:function(event: React.ChangeEvent, page: number) =
  voidevent The event source of the callback.page The page selected.

- page `integer`  
  Default is - The current page. Unlike TablePagination, which starts
  numbering from 0, this pagination starts from 1.

- renderItem `func`  
  Default is (item) = PaginationItem ...item / Render the
  item.Signature:function(params: PaginationRenderItemParams) =
  ReactNodeparams The props to spread on a PaginationItem.

- shape `'circular'| 'rounded'`  
  Default is 'circular' The shape of the pagination items.

- showFirstButton `bool`  
  Default is FALSE If true, show the first-page button.

- showLastButton `bool`  
  Default is FALSE If true, show the last-page button.

- siblingCount `integer`  
  Default is 1 Number of always visible pages before and after the
  current page.

- size `'small'| 'medium'| 'large'| string`  
  Default is 'medium' The size of the component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'outlined'| 'text'| string`  
  Default is 'text' The variant to use.
