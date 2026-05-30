# Popover

<https://mui.com/material-ui/api/popover/>

## Usage

``` r
Popover(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- open `bool`  
  Default is - If true, the component is shown.

- action `ref`  
  Default is - A ref for imperative actions. It currently only supports
  updatePosition() action.

- anchorEl `HTML element| func`  
  Default is - An HTML element, PopoverVirtualElement, or a function
  that returns either. It's used to set the position of the popover.

- anchorOrigin
  `{ horizontal: 'center'| 'left'| 'right'| number, vertical: 'bottom'| 'center'| 'top'| number }`  
  Default is vertical: 'top', horizontal: 'left', This is the point on
  the anchor where the popover's anchorEl will attach to. This is not
  used when the anchorReference is 'anchorPosition'.Options: vertical:
  top, center, bottom; horizontal: left, center, right.

- anchorPosition `{ left: number, top: number }`  
  Default is - This is the position that may be used to set the position
  of the popover. The coordinates are relative to the application's
  client area.

- anchorReference `'anchorEl'| 'anchorPosition'| 'none'`  
  Default is 'anchorEl' This determines which anchor prop to refer to
  when setting the position of the popover.

- BackdropComponent `elementType`  
  Default is styled(Backdrop, name: 'MuiModal', slot: 'Backdrop',
  overridesResolver: (props, styles) = return styles.backdrop; , )(
  zIndex: -1, ) A backdrop component. This prop enables custom backdrop
  rendering.Deprecated Use slots.backdrop instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- BackdropProps `object`  
  Default is - Props applied to the Backdrop element.Deprecated Use
  slotProps.backdrop instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- container `HTML element| func`  
  Default is - An HTML element, component instance, or function that
  returns either. The container will passed to the Modal component.By
  default, it uses the body of the anchorEl's top-level document object,
  so it's simply document.body most of the time.

- disableScrollLock `bool`  
  Default is FALSE Disable the scroll lock behavior.

- elevation `integer`  
  Default is 8 The elevation of the popover.

- marginThreshold `number`  
  Default is 16 Specifies how close to the edge of the window the
  popover can appear. If null, the popover will not be constrained by
  the window.

- onClose `func`  
  Default is - Callback fired when the component requests to be closed.
  The reason parameter can optionally be used to control the response to
  onClose.

- PaperProps `{ component?: element type }`  
  Default is Props applied to the Paper element.This prop is an alias
  for slotProps.paper and will be overriden by it if both are
  used.Deprecated Use slotProps.paper instead.

- slotProps
  `{ backdrop?: func| object, paper?: func| object, root?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ backdrop?: elementType, paper?: elementType, root?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- transformOrigin
  `{ horizontal: 'center'| 'left'| 'right'| number, vertical: 'bottom'| 'center'| 'top'| number }`  
  Default is vertical: 'top', horizontal: 'left', This is the point on
  the popover which will attach to the anchor's origin.Options:
  vertical: top, center, bottom, x(px); horizontal: left, center, right,
  x(px).

- TransitionComponent `elementType`  
  Default is Grow The component used for the transition. Follow this
  guide to learn more about the requirements for this
  component.Deprecated use the slots.transition prop instead. This prop
  will be removed in a future major release. See Migrating from
  deprecated APIs for more details.

- transitionDuration
  `'auto'| number| { appear?: number, enter?: number, exit?: number }`  
  Default is 'auto' Set to 'auto' to automatically calculate transition
  time based on height.

- TransitionProps `object`  
  Default is Props applied to the transition element. By default, the
  element is based on this Transition component.Deprecated use the
  slotProps.transition prop instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.
