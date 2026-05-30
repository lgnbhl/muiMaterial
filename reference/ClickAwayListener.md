# ClickAwayListener

<https://mui.com/material-ui/api/click-away-listener/>

## Usage

``` r
ClickAwayListener(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `element`  
  Default is - The wrapped element.This needs to be able to hold a ref.

- onClickAway `func`  
  Default is - Callback fired when a "click away" event is detected.

- disableReactTree `bool`  
  Default is FALSE If true, the React tree is ignored and only the DOM
  tree is considered. This prop changes how portaled elements are
  handled.

- mouseEvent
  `'onClick'| 'onMouseDown'| 'onMouseUp'| 'onPointerDown'| 'onPointerUp'| false`  
  Default is 'onClick' The mouse event to listen to. You can disable the
  listener by providing false.

- touchEvent `'onTouchEnd'| 'onTouchStart'| false`  
  Default is 'onTouchEnd' The touch event to listen to. You can disable
  the listener by providing false.
