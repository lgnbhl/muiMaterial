# SwipeableDrawer

<https://mui.com/material-ui/api/swipeable-drawer/>

## Usage

``` r
SwipeableDrawer(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- onClose `func`  
  Default is - Callback fired when the component requests to be
  closed.Signature:function(event: React.SyntheticEvent ) = voidevent
  The event source of the callback.

- onOpen `func`  
  Default is - Callback fired when the component requests to be
  opened.Signature:function(event: React.SyntheticEvent ) = voidevent
  The event source of the callback.

- allowSwipeInChildren `func| bool`  
  Default is FALSE If set to true, the swipe event will open the drawer
  even if the user begins the swipe on one of the drawer's children.
  This can be useful in scenarios where the drawer is partially visible.
  You can customize it further with a callback that determines which
  children the user can drag over to open the drawer (for example, to
  ignore other elements that handle touch move events, like sliders).

- children `node`  
  Default is - The content of the component.

- disableBackdropTransition `bool`  
  Default is FALSE Disable the backdrop transition. This can improve the
  FPS on low-end devices.

- disableDiscovery `bool`  
  Default is FALSE If true, touching the screen near the edge of the
  drawer will not slide in the drawer a bit to promote accidental
  discovery of the swipe gesture.

- disableSwipeToOpen `bool`  
  Default is typeof navigator !== 'undefined' &&
  /iPad\|iPhone\|iPod/.test(navigator.userAgent) If true, swipe to open
  is disabled. This is useful in browsers where swiping triggers
  navigation actions. Swipe to open is disabled on iOS browsers by
  default.

- hysteresis `number`  
  Default is 0.52 Affects how far the drawer must be opened/closed to
  change its state. Specified as percent (0-1) of the width of the
  drawer

- minFlingVelocity `number`  
  Default is 450 Defines, from which (average) velocity on, the swipe is
  defined as complete although hysteresis isn't reached. Good threshold
  is between 250 - 1000 px/s

- open `bool`  
  Default is FALSE If true, the component is shown.

- slotProps
  `{ backdrop?: func| object, docked?: func| object, paper?: func| object, root?: func| object, swipeArea?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ backdrop?: elementType, docked?: elementType, paper?: elementType, root?: elementType, swipeArea?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- SwipeAreaProps `object`  
  Default is - The element is used to intercept the touch events on the
  edge.Deprecated use the slotProps.swipeArea prop instead. This prop
  will be removed in a future major release. See Migrating from
  deprecated APIs for more details.

- swipeAreaWidth `number`  
  Default is 20 The width of the left most (or right most) area in px
  that the drawer can be swiped open from.

- transitionDuration
  `number| { appear?: number, enter?: number, exit?: number }`  
  Default is enter: theme.transitions.duration.enteringScreen, exit:
  theme.transitions.duration.leavingScreen, The duration for the
  transition, in milliseconds. You may specify a single timeout for all
  transitions, or individually with an object.
