# ButtonBase

<https://mui.com/material-ui/api/button-base/>

## Usage

``` r
ButtonBase(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- action `ref`  
  Default is - A ref for imperative actions. It currently only supports
  focusVisible() action.

- centerRipple `bool`  
  Default is FALSE If true, the ripples are centered. They won't start
  at the cursor interaction position.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `element type`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.This needs to be able to hold a ref.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disableRipple `bool`  
  Default is FALSE If true, the ripple effect is disabled. Without a
  ripple there is no styling for :focus-visible by default. Be sure to
  highlight the element by applying separate styles with the
  .Mui-focusVisible class.

- disableTouchRipple `bool`  
  Default is FALSE If true, the touch ripple effect is disabled.

- focusRipple `bool`  
  Default is FALSE If true, the base button will have a keyboard focus
  ripple.

- focusVisibleClassName `string`  
  Default is - This prop can help identify which element has keyboard
  focus. The class name will be applied when the element gains the focus
  through keyboard interaction. It's a polyfill for the CSS
  :focus-visible selector. The rationale for using this feature is
  explained here. A polyfill can be used to apply a focus-visible class
  to other components if needed.

- LinkComponent `elementType`  
  Default is 'a' The component used to render a link when the href prop
  is provided.

- onFocusVisible `func`  
  Default is - Callback fired when the component is focused with a
  keyboard. We trigger a onFocus callback too.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TouchRippleProps `object`  
  Default is - Props applied to the TouchRipple element.

- touchRippleRef
  `func| { current?: { pulsate: func, start: func, stop: func } }`  
  Default is - A ref that points to the TouchRipple element.
