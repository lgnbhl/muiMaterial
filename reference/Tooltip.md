# Tooltip

<https://mui.com/material-ui/api/tooltip/>

## Usage

``` r
Tooltip(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `element`  
  Default is - Tooltip reference element.This needs to be able to hold a
  ref.

- arrow `bool`  
  Default is FALSE If true, adds an arrow to the tooltip.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- components
  `{ Arrow?: elementType, Popper?: elementType, Tooltip?: elementType, Transition?: elementType }`  
  Default is The components used for each slot inside.Deprecated use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps
  `{ arrow?: object, popper?: object, tooltip?: object, transition?: object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- describeChild `bool`  
  Default is FALSE Set to true if the title acts as an accessible
  description. By default the title acts as an accessible label for the
  child.

- disableFocusListener `bool`  
  Default is FALSE Do not respond to focus-visible events.

- disableHoverListener `bool`  
  Default is FALSE Do not respond to hover events.

- disableInteractive `bool`  
  Default is FALSE Makes a tooltip not interactive, i.e. it will close
  when the user hovers over the tooltip before the leaveDelay is
  expired.

- disableTouchListener `bool`  
  Default is FALSE Do not respond to long press touch events.

- enterDelay `number`  
  Default is 100 The number of milliseconds to wait before showing the
  tooltip. This prop won't impact the enter touch delay
  (enterTouchDelay).

- enterNextDelay `number`  
  Default is 0 The number of milliseconds to wait before showing the
  tooltip when one was already recently opened.

- enterTouchDelay `number`  
  Default is 700 The number of milliseconds a user must touch the
  element before showing the tooltip.

- followCursor `bool`  
  Default is FALSE If true, the tooltip follow the cursor over the
  wrapped element.

- id `string`  
  Default is - This prop is used to help implement the accessibility
  logic. If you don't provide this prop. It falls back to a randomly
  generated id.

- leaveDelay `number`  
  Default is 0 The number of milliseconds to wait before hiding the
  tooltip. This prop won't impact the leave touch delay
  (leaveTouchDelay).

- leaveTouchDelay `number`  
  Default is 1500 The number of milliseconds after the user stops
  touching an element before hiding the tooltip.

- onClose `func`  
  Default is - Callback fired when the component requests to be
  closed.Signature:function(event: React.SyntheticEvent) = voidevent The
  event source of the callback.

- onOpen `func`  
  Default is - Callback fired when the component requests to be
  open.Signature:function(event: React.SyntheticEvent) = voidevent The
  event source of the callback.

- open `bool`  
  Default is - If true, the component is shown.

- placement
  `'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top'`  
  Default is 'bottom' Tooltip placement.

- PopperComponent `elementType`  
  Default is - The component used for the popper.Deprecated use the
  slots.popper prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- PopperProps `object`  
  Default is Props applied to the Popper element.Deprecated use the
  slotProps.popper prop instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- slotProps
  `{ arrow?: func| object, popper?: func| object, tooltip?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ arrow?: elementType, popper?: elementType, tooltip?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- title `node`  
  Default is - Tooltip title. Zero-length titles string, undefined, null
  and false are never displayed.

- TransitionComponent `elementType`  
  Default is - The component used for the transition. Follow this guide
  to learn more about the requirements for this component.Deprecated use
  the slots.transition prop instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- TransitionProps `object`  
  Default is Props applied to the transition element. By default, the
  element is based on this Transition component.Deprecated use the
  slotProps.transition prop instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.
