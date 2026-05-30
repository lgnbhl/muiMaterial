# MobileStepper

<https://mui.com/material-ui/api/mobile-stepper/>

## Usage

``` r
MobileStepper(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- steps `integer`  
  Default is - The total steps.

- activeStep `integer`  
  Default is 0 Set the active step (zero based index). Defines which dot
  is highlighted when the variant is 'dots'.

- backButton `node`  
  Default is - A back button element. For instance, it can be a Button
  or an IconButton.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- LinearProgressProps `object`  
  Default is - Props applied to the LinearProgress element.Deprecated
  Use slotProps.progress instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- nextButton `node`  
  Default is - A next button element. For instance, it can be a Button
  or an IconButton.

- position `'bottom'| 'static'| 'top'`  
  Default is 'bottom' Set the positioning type.

- slotProps
  `{ dot?: func| object, dots?: func| object, progress?: func| object, root?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ dot?: elementType, dots?: elementType, progress?: elementType, root?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'dots'| 'progress'| 'text'`  
  Default is 'dots' The variant to use.
