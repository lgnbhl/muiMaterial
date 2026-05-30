# Slider

<https://mui.com/material-ui/api/slider/>

## Usage

``` r
Slider(...)

Slider.shinyInput(inputId, ..., value = defaultValue)

updateSlider.shinyInput(
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

- aria-label `string`  
  Default is - The label of the slider.

- aria-labelledby `string`  
  Default is - The id of the element containing a label for the slider.

- aria-valuetext `string`  
  Default is - A string value that provides a user-friendly name for the
  current value of the slider.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'primary' The color of the component. It supports both
  default and custom theme colors, which can be added as shown in the
  palette customization guide.

- components
  `{ Input?: elementType, Mark?: elementType, MarkLabel?: elementType, Rail?: elementType, Root?: elementType, Thumb?: elementType, Track?: elementType, ValueLabel?: elementType }`  
  Default is The components used for each slot inside.Deprecated use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps
  `{ input?: func| object, mark?: func| object, markLabel?: func| object, rail?: func| object, root?: func| object, thumb?: func| object, track?: func| object, valueLabel?: func| { children?: element, className?: string, open?: bool, style?: object, value?: node, valueLabelDisplay?: 'auto'| 'off'| 'on' } }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- defaultValue `Array`  
  Default is - The default value. Use when the component is not
  controlled.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableSwap `bool`  
  Default is FALSE If true, the active thumb doesn't swap when moving
  pointer over a thumb while dragging another thumb.

- getAriaLabel `func`  
  Default is - Accepts a function which returns a string value that
  provides a user-friendly name for the thumb labels of the slider. This
  is important for screen reader users.Signature:function(index: number)
  = stringindex The thumb label's index to format.

- getAriaValueText `func`  
  Default is - Accepts a function which returns a string value that
  provides a user-friendly name for the current value of the slider.
  This is important for screen reader users.Signature:function(value:
  number, index: number) = stringvalue The thumb label's value to
  format.index The thumb label's index to format.

- marks `Array { label?: node, value: number } | bool`  
  Default is FALSE Marks indicate predetermined values to which the user
  can move the slider. If true the marks are spaced according the value
  of the step prop. If an array, it should contain objects with value
  and an optional label keys.

- max `number`  
  Default is 100 The maximum allowed value of the slider. Should not be
  equal to min.

- min `number`  
  Default is 0 The minimum allowed value of the slider. Should not be
  equal to max.

- name `string`  
  Default is - Name attribute of the hidden input element.

- onChange `func`  
  Default is - Callback function that is fired when the slider's value
  changed.Signature:function(event: Event, value: Value, activeThumb:
  number) = voidevent The event source of the callback. You can pull out
  the new value by accessing event.target.value (any). Warning: This is
  a generic event not a change event.value The new value.activeThumb
  Index of the currently moved thumb.

- onChangeCommitted `func`  
  Default is - Callback function that is fired when the mouseup is
  triggered.Signature:function(event: React.SyntheticEvent \| Event,
  value: Value) = voidevent The event source of the callback. Warning:
  This is a generic event not a change event.value The new value.

- orientation `'horizontal'| 'vertical'`  
  Default is 'horizontal' The component orientation.

- scale `func`  
  Default is function Identity(x) return x; A transformation function,
  to change the scale of the slider.Signature:function(x: any) = any

- shiftStep `number`  
  Default is 10 The granularity with which the slider can step through
  values when using Page Up/Page Down or Shift + Arrow Up/Arrow Down.

- size `'small'| 'medium'| string`  
  Default is 'medium' The size of the slider.

- slotProps
  `{ input?: func| object, mark?: func| object, markLabel?: func| object, rail?: func| object, root?: func| object, thumb?: func| object, track?: func| object, valueLabel?: func| { children?: element, className?: string, open?: bool, style?: object, value?: node, valueLabelDisplay?: 'auto'| 'off'| 'on' } }`  
  Default is The props used for each slot inside the Slider.

- slots
  `{ input?: elementType, mark?: elementType, markLabel?: elementType, rail?: elementType, root?: elementType, thumb?: elementType, track?: elementType, valueLabel?: elementType }`  
  Default is The components used for each slot inside the Slider. Either
  a string to use a HTML element or a component.

- step `number`  
  Default is 1 The granularity with which the slider can step through
  values. (A "discrete" slider.) The min prop serves as the origin for
  the valid values. We recommend (max - min) to be evenly divisible by
  the step.When step is null, the thumb can only be slid onto marks
  provided with the marks prop.

- sx `Array`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- tabIndex `number`  
  Default is - Tab index attribute of the hidden input element.

- track `'inverted'| 'normal'| false`  
  Default is 'normal' The track presentation: normal the track will
  render a bar representing the slider value. inverted the track will
  render a bar representing the remaining slider value. false the track
  will render without a bar.

- value `Array`  
  Default is - The value of the slider. For ranged sliders, provide an
  array with two values.

- valueLabelDisplay `'auto'| 'off'| 'on'`  
  Default is 'off' Controls when the value label is displayed: auto the
  value label will display when the thumb is hovered or focused. on will
  display persistently. off will never display.

- valueLabelFormat `func| string`  
  Default is function Identity(x) return x; The format function the
  value label's value.When a function is provided, it should have the
  following signature:- number value The value label's value to format -
  number index The value label's index to format

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  Slider.shinyInput("s", value = 30, min = 0, max = 100),
  verbatimTextOutput("out")
)

server <- function(input, output, session) {
  output$out <- renderPrint(input$s)
}

shinyApp(ui, server)
}
```
