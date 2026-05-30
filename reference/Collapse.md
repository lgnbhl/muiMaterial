# Collapse

<https://mui.com/material-ui/api/collapse/>

## Usage

``` r
Collapse(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- addEndListener `func`  
  Default is - Add a custom transition end trigger. Called with the
  transitioning DOM node and a done callback. Allows for more fine
  grained transition end logic. Note: Timeouts are still used as a
  fallback if provided.

- children `node`  
  Default is - The content node to be collapsed.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- collapsedSize `number| string`  
  Default is '0px' The width (horizontal) or height (vertical) of the
  container when collapsed.

- component `element type`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.This needs to be able to hold a ref.

- easing `{ enter?: string, exit?: string }| string`  
  Default is - The transition timing function. You may specify a single
  easing or a object containing enter and exit values.

- in `bool`  
  Default is - If true, the component will transition in.

- orientation `'horizontal'| 'vertical'`  
  Default is 'vertical' The transition orientation.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- timeout
  `'auto'| number| { appear?: number, enter?: number, exit?: number }`  
  Default is duration.standard The duration for the transition, in
  milliseconds. You may specify a single timeout for all transitions, or
  individually with an object.Set to 'auto' to automatically calculate
  transition time based on height.
