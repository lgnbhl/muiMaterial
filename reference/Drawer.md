# Drawer

<https://mui.com/material-ui/api/drawer/>

## Usage

``` r
Drawer(...)

Drawer.shinyInput(inputId, ...)

updateDrawer.shinyInput(
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

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- anchor `'bottom'| 'left'| 'right'| 'top'`  
  Default is 'left' Side from which the drawer will appear.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- elevation `integer`  
  Default is 16 The elevation of the drawer.

- hideBackdrop `bool`  
  Default is FALSE If true, the backdrop is not rendered.

- ModalProps `object`  
  Default is Props applied to the Modal element.

- onClose `func`  
  Default is - Callback fired when the component requests to be closed.
  The reason parameter can optionally be used to control the response to
  onClose.Signature:function(event: object, reason: string) = voidevent
  The event source of the callback.reason Can be: "escapeKeyDown",
  "backdropClick".

- open `bool`  
  Default is FALSE If true, the component is shown.

- PaperProps `object`  
  Default is Props applied to the Paper element.Deprecated use the
  slotProps.paper prop instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- SlideProps `object`  
  Default is - Props applied to the Slide element.Deprecated use the
  slotProps.transition prop instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- slotProps
  `{ backdrop?: func| object, docked?: func| object, paper?: func| object, root?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ backdrop?: elementType, docked?: elementType, paper?: elementType, root?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- transitionDuration
  `number| { appear?: number, enter?: number, exit?: number }`  
  Default is enter: theme.transitions.duration.enteringScreen, exit:
  theme.transitions.duration.leavingScreen, The duration for the
  transition, in milliseconds. You may specify a single timeout for all
  transitions, or individually with an object.

- variant `'permanent'| 'persistent'| 'temporary'`  
  Default is 'temporary' The variant to use.
