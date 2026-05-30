# Dialog

<https://mui.com/material-ui/api/dialog/>

## Usage

``` r
Dialog(...)

Dialog.shinyInput(inputId, ...)

updateDialog.shinyInput(
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

- open `bool`  
  Default is - If true, the component is shown.

- aria-describedby `string`  
  Default is - The id(s) of the element(s) that describe the dialog.

- aria-labelledby `string`  
  Default is - The id(s) of the element(s) that label the dialog.

- aria-modal `'false'| 'true'| bool`  
  Default is TRUE Informs assistive technologies that the element is
  modal. It's added on the element with role="dialog".

- BackdropComponent `elementType`  
  Default is styled(Backdrop, name: 'MuiModal', slot: 'Backdrop',
  overridesResolver: (props, styles) = return styles.backdrop; , )(
  zIndex: -1, ) A backdrop component. This prop enables custom backdrop
  rendering.Deprecated Use slots.backdrop instead. While this prop
  currently works, it will be removed in the next major version.

- children `node`  
  Default is - Dialog children, usually the included sub-components.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- disableEscapeKeyDown `bool`  
  Default is FALSE If true, hitting escape will not fire the onClose
  callback.

- fullScreen `bool`  
  Default is FALSE If true, the dialog is full-screen.

- fullWidth `bool`  
  Default is FALSE If true, the dialog stretches to maxWidth.Notice that
  the dialog width grow is limited by the default margin.

- maxWidth `'xs'| 'sm'| 'md'| 'lg'| 'xl'| false| string`  
  Default is 'sm' Determine the max-width of the dialog. The dialog
  width grows with the size of the screen. Set to false to disable
  maxWidth.

- onClose `func`  
  Default is - Callback fired when the component requests to be
  closed.Signature:function(event: object, reason: string) = voidevent
  The event source of the callback.reason Can be: "escapeKeyDown",
  "backdropClick".

- PaperComponent `elementType`  
  Default is Paper The component used to render the body of the dialog.

- PaperProps `object`  
  Default is Props applied to the Paper element.Deprecated Use
  slotProps.paper instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- scroll `'body'| 'paper'`  
  Default is 'paper' Determine the container for scrolling the dialog.

- slotProps
  `{ backdrop?: func| object, container?: func| object, paper?: func| object, root?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ backdrop?: elementType, container?: elementType, paper?: elementType, root?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TransitionComponent `elementType`  
  Default is Fade The component used for the transition. Follow this
  guide to learn more about the requirements for this
  component.Deprecated Use slots.transition instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

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
  major release. See Migrating from deprecated APIs for more details.
