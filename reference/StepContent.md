# StepContent

<https://mui.com/material-ui/api/step-content/>

## Usage

``` r
StepContent(...)
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

- slotProps `{ transition?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TransitionComponent `elementType`  
  Default is Collapse The component used for the transition. Follow this
  guide to learn more about the requirements for this
  component.Deprecated Use slots.transition instead. This prop will be
  removed in a future major release. How to migrate.

- transitionDuration
  `'auto'| number| { appear?: number, enter?: number, exit?: number }`  
  Default is 'auto' Adjust the duration of the content expand
  transition. Passed as a prop to the transition component.Set to 'auto'
  to automatically calculate transition time based on height.

- TransitionProps `object`  
  Default is - Props applied to the transition element. By default, the
  element is based on this Transition component.Deprecated Use
  slotProps.transition instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.
