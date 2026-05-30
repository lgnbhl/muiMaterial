# LinearProgress

<https://mui.com/material-ui/api/linear-progress/>

## Usage

``` r
LinearProgress(...)
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

- color `'inherit'| 'primary'| 'secondary'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `number`  
  Default is - The value of the progress indicator for the determinate
  and buffer variants. Value between 0 and 100.

- valueBuffer `number`  
  Default is - The value for the buffer variant. Value between 0 and
  100.

- variant `'buffer'| 'determinate'| 'indeterminate'| 'query'`  
  Default is 'indeterminate' The variant to use. Use indeterminate or
  query when there is no progress value.
