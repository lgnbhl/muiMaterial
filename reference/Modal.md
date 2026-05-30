# Modal

<https://mui.com/material-ui/api/modal/>

## Usage

``` r
Modal(...)

Modal.shinyInput(inputId, ...)

updateModal.shinyInput(
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

- children `element`  
  Default is - A single child content element.This needs to be able to
  hold a ref.

- open `bool`  
  Default is - If true, the component is shown.

- BackdropComponent `elementType`  
  Default is styled(Backdrop, name: 'MuiModal', slot: 'Backdrop',
  overridesResolver: (props, styles) = return styles.backdrop; , )(
  zIndex: -1, ) A backdrop component. This prop enables custom backdrop
  rendering.Deprecated Use slots.backdrop instead. While this prop
  currently works, it will be removed in the next major version.

- BackdropProps `object`  
  Default is - Props applied to the Backdrop element.Deprecated Use
  slotProps.backdrop instead.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- closeAfterTransition `bool`  
  Default is FALSE When set to true the Modal waits until a nested
  Transition is completed before closing.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- components `{ Backdrop?: elementType, Root?: elementType }`  
  Default is The components used for each slot inside.Deprecated Use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps `{ backdrop?: func| object, root?: func| object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated Use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- container `HTML element| func`  
  Default is - An HTML element or function that returns one. The
  container will have the portal children appended to it.You can also
  provide a callback, which is called in a React layout effect. This
  lets you set the container from a ref, and also makes server-side
  rendering possible.By default, it uses the body of the top-level
  document object, so it's simply document.body most of the time.

- disableAutoFocus `bool`  
  Default is FALSE If true, the modal will not automatically shift focus
  to itself when it opens, and replace it to the last focused element
  when it closes. This also works correctly with any modal children that
  have the disableAutoFocus prop.Generally this should never be set to
  true as it makes the modal less accessible to assistive technologies,
  like screen readers.

- disableEnforceFocus `bool`  
  Default is FALSE If true, the modal will not prevent focus from
  leaving the modal while open.Generally this should never be set to
  true as it makes the modal less accessible to assistive technologies,
  like screen readers.

- disableEscapeKeyDown `bool`  
  Default is FALSE If true, hitting escape will not fire the onClose
  callback.

- disablePortal `bool`  
  Default is FALSE The children will be under the DOM hierarchy of the
  parent component.

- disableRestoreFocus `bool`  
  Default is FALSE If true, the modal will not restore focus to
  previously focused element once modal is hidden or unmounted.

- disableScrollLock `bool`  
  Default is FALSE Disable the scroll lock behavior.

- hideBackdrop `bool`  
  Default is FALSE If true, the backdrop is not rendered.

- keepMounted `bool`  
  Default is FALSE Always keep the children in the DOM. This prop can be
  useful in SEO situation or when you want to maximize the
  responsiveness of the Modal.

- onClose `func`  
  Default is - Callback fired when the component requests to be closed.
  The reason parameter can optionally be used to control the response to
  onClose.Signature:function(event: object, reason: string) = voidevent
  The event source of the callback.reason Can be: "escapeKeyDown",
  "backdropClick".

- onTransitionEnter `func`  
  Default is - A function called when a transition enters.

- onTransitionExited `func`  
  Default is - A function called when a transition has exited.

- slotProps `{ backdrop?: func| object, root?: func| object }`  
  Default is The props used for each slot inside the Modal.

- slots `{ backdrop?: elementType, root?: elementType }`  
  Default is The components used for each slot inside the Modal. Either
  a string to use a HTML element or a component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
