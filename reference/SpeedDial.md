# SpeedDial

<https://mui.com/material-ui/api/speed-dial/>

## Usage

``` r
SpeedDial(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- ariaLabel `string`  
  Default is - The aria-label of the button element. Also used to
  provide the id for the SpeedDial element and its children.

- children `node`  
  Default is - SpeedDialActions to display when the SpeedDial is open.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- direction `'down'| 'left'| 'right'| 'up'`  
  Default is 'up' The direction the actions open relative to the
  floating action button.

- FabProps `object`  
  Default is Props applied to the Fab element.

- hidden `bool`  
  Default is FALSE If true, the SpeedDial is hidden.

- icon `node`  
  Default is - The icon to display in the SpeedDial Fab. The
  SpeedDialIcon component provides a default Icon with animation.

- onClose `func`  
  Default is - Callback fired when the component requests to be
  closed.Signature:function(event: object, reason: string) = voidevent
  The event source of the callback.reason Can be: "toggle", "blur",
  "mouseLeave", "escapeKeyDown".

- onOpen `func`  
  Default is - Callback fired when the component requests to be
  open.Signature:function(event: object, reason: string) = voidevent The
  event source of the callback.reason Can be: "toggle", "focus",
  "mouseEnter".

- open `bool`  
  Default is - If true, the component is shown.

- openIcon `node`  
  Default is - The icon to display in the SpeedDial Fab when the
  SpeedDial is open.

- slotProps `{ root?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ root?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TransitionComponent `elementType`  
  Default is Zoom \* @deprecated Use `slots.transition` instead. This
  prop will be removed in a future major release. The component used for
  the transition. Follow this guide to learn more about the requirements
  for this component.Deprecated Use slots.transition instead. This prop
  will be removed in a future major release. How to migrate

- transitionDuration
  `number| { appear?: number, enter?: number, exit?: number }`  
  Default is enter: theme.transitions.duration.enteringScreen, exit:
  theme.transitions.duration.leavingScreen, The duration for the
  transition, in milliseconds. You may specify a single timeout for all
  transitions, or individually with an object.

- TransitionProps `object`  
  Default is - Props applied to the transition element. By default, the
  element is based on this Transition component.Deprecated Use
  slotProps.transition instead. This prop will be removed in a future
  major release. How to migrate
