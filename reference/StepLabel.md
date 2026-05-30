# StepLabel

<https://mui.com/material-ui/api/step-label/>

## Usage

``` r
StepLabel(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - In most cases will simply be a string containing a title
  for the label.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- componentsProps `{ label?: object }`  
  Default is The props used for each slot inside.Deprecated use the
  slotProps prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- error `bool`  
  Default is FALSE If true, the step is marked as failed.

- icon `node`  
  Default is - Override the default label of the step icon.

- optional `node`  
  Default is - The optional node to display.

- slotProps
  `{ label?: func| object, root?: func| object, stepIcon?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ label?: elementType, root?: elementType, stepIcon?: elementType }`  
  Default is The components used for each slot inside.

- StepIconComponent `elementType`  
  Default is - The component to render in place of the
  StepIcon.Deprecated Use slots.stepIcon instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- StepIconProps `object`  
  Default is - Props applied to the StepIcon element.Deprecated Use
  slotProps.stepIcon instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
