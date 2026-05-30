# InputLabel

<https://mui.com/material-ui/api/input-label/>

## Usage

``` r
InputLabel(...)
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

- color
  `'error'| 'info'| 'primary'| 'secondary'| 'success'| 'warning'| string`  
  Default is - The color of the component. It supports both default and
  custom theme colors, which can be added as shown in the palette
  customization guide.

- disableAnimation `bool`  
  Default is FALSE If true, the transition animation is disabled.

- disabled `bool`  
  Default is - If true, the component is disabled.

- error `bool`  
  Default is - If true, the label is displayed in an error state.

- focused `bool`  
  Default is - If true, the input of this label is focused.

- margin `'dense'`  
  Default is - If dense, will adjust vertical spacing. This is normally
  obtained via context from FormControl.

- required `bool`  
  Default is - if true, the label will indicate that the input is
  required.

- shrink `bool`  
  Default is - If true, the label is shrunk.

- size `'medium'| 'small'| string`  
  Default is 'medium' The size of the component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'filled'| 'outlined'| 'standard'`  
  Default is - The variant to use.
