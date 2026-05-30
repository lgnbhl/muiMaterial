# Grow

<https://mui.com/material-ui/api/grow/>

## Usage

``` r
Grow(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `element`  
  Default is - A single child content element.This needs to be able to
  hold a ref.

- addEndListener `func`  
  Default is - Add a custom transition end trigger. Called with the
  transitioning DOM node and a done callback. Allows for more fine
  grained transition end logic. Note: Timeouts are still used as a
  fallback if provided.

- appear `bool`  
  Default is TRUE Perform the enter transition when it first mounts if
  in is also true. Set this to false to disable this behavior.

- easing `{ enter?: string, exit?: string }| string`  
  Default is - The transition timing function. You may specify a single
  easing or a object containing enter and exit values.

- in `bool`  
  Default is - If true, the component will transition in.

- timeout
  `'auto'| number| { appear?: number, enter?: number, exit?: number }`  
  Default is 'auto' The duration for the transition, in milliseconds.
  You may specify a single timeout for all transitions, or individually
  with an object.Set to 'auto' to automatically calculate transition
  time based on height.
