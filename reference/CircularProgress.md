# CircularProgress

<https://mui.com/material-ui/api/circular-progress/>

## Usage

``` r
CircularProgress(...)
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

- color
  `'inherit'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- disableShrink `bool`  
  Default is FALSE If true, the shrink animation is disabled. This only
  works if variant is indeterminate.

- size `number| string`  
  Default is 40 The size of the component. If using a number, the pixel
  unit is assumed. If using a string, you need to provide the CSS unit,
  for example '3rem'.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- thickness `number`  
  Default is 3.6 The thickness of the circle.

- value `number`  
  Default is 0 The value of the progress indicator for the determinate
  variant. Value between 0 and 100.

- variant `'determinate'| 'indeterminate'`  
  Default is 'indeterminate' The variant to use. Use indeterminate when
  there is no progress value.
