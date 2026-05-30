# Slide

<https://mui.com/material-ui/api/slide/>

## Usage

``` r
Slide(...)
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

- container `HTML element| func`  
  Default is - An HTML element, or a function that returns one. It's
  used to set the container the Slide is transitioning from.

- direction `'down'| 'left'| 'right'| 'up'`  
  Default is 'down' Direction the child node will enter from.

- easing `{ enter?: string, exit?: string }| string`  
  Default is enter: theme.transitions.easing.easeOut, exit:
  theme.transitions.easing.sharp, The transition timing function. You
  may specify a single easing or a object containing enter and exit
  values.

- in `bool`  
  Default is - If true, the component will transition in.

- timeout `number| { appear?: number, enter?: number, exit?: number }`  
  Default is enter: theme.transitions.duration.enteringScreen, exit:
  theme.transitions.duration.leavingScreen, The duration for the
  transition, in milliseconds. You may specify a single timeout for all
  transitions, or individually with an object.
