# TablePagination

<https://mui.com/material-ui/api/table-pagination/>

## Usage

``` r
TablePagination(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- count `integer`  
  Default is - The total number of rows.To enable server side pagination
  for an unknown number of items, provide -1.

- onPageChange `func`  
  Default is - Callback fired when the page is
  changed.Signature:function(event: React.MouseEvent \| null, page:
  number) = voidevent The event source of the callback.page The page
  selected.

- page `integer`  
  Default is - The zero-based index of the current page.

- rowsPerPage `integer`  
  Default is - The number of rows per page.Set -1 to display all the
  rows.

- ActionsComponent `elementType`  
  Default is TablePaginationActions The component used for displaying
  the actions. Either a string to use a HTML element or a component.

- backIconButtonProps `object`  
  Default is - Props applied to the back arrow IconButton component.This
  prop is an alias for slotProps.actions.previousButton and will be
  overriden by it if both are used.Deprecated Use
  slotProps.actions.previousButton instead.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- getItemAriaLabel `func`  
  Default is function defaultGetAriaLabel(type) return
  `Go to $type page`; Accepts a function which returns a string value
  that provides a user-friendly name for the current page. This is
  important for screen reader users.For localization purposes, you can
  use the provided translations.Signature:function(type: string) =
  stringtype The link or button type to format ('first' \| 'last' \|
  'next' \| 'previous').

- labelDisplayedRows `func`  
  Default is function defaultLabelDisplayedRows( from, to, count )
  return `$from8093$to of $count !== -1 ? count : `more than \$to“;
  Customize the displayed rows label. Invoked with a from, to, count,
  page object.For localization purposes, you can use the provided
  translations.

- labelRowsPerPage `node`  
  Default is 'Rows per page:' Customize the rows per page label.For
  localization purposes, you can use the provided translations.

- nextIconButtonProps \`object\`  
  Default is - Props applied to the next arrow IconButton element.This
  prop is an alias for slotProps.actions.nextButton and will be
  overriden by it if both are used.Deprecated Use
  slotProps.actions.nextButton instead.

- onRowsPerPageChange \`func\`  
  Default is - Callback fired when the number of rows per page is
  changed.Signature:function(event: React.ChangeEvent) = voidevent The
  event source of the callback.

- rowsPerPageOptions  
  Default is 10, 25, 50, 100 Customizes the options of the rows per page
  select field. If less than two options are available, no select field
  will be displayed. Use -1 for the value with a custom label to show
  all the rows.

- SelectProps \`object\`  
  Default is Props applied to the rows per page Select element.This prop
  is an alias for slotProps.select and will be overriden by it if both
  are used.Deprecated Use slotProps.select instead.

- showFirstButton \`bool\`  
  Default is FALSE If true, show the first-page button.

- showLastButton \`bool\`  
  Default is FALSE If true, show the last-page button.

- slotProps  
  Default is The props used for each slot inside.

- slots  
  Default is The components used for each slot inside.

- sx  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the \`sx\` page for more details.
