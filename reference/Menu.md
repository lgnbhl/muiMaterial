# Menu

<https://mui.com/material-ui/api/menu/>

## Usage

``` r
Menu(...)

Menu.shinyInput(inputId, ...)

updateMenu.shinyInput(
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

- anchorEl `HTML element| func`  
  Default is - An HTML element, or a function that returns one. It's
  used to set the position of the menu.

- autoFocus `bool`  
  Default is TRUE If true (Default) will focus the role="menu" if no
  focusable child is found. Disabled children are not focusable. If you
  set this prop to false focus will be placed on the parent modal
  container. This has severe accessibility implications and should only
  be considered if you manage focus otherwise.

- children `node`  
  Default is - Menu contents, normally MenuItems.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- disableAutoFocusItem `bool`  
  Default is FALSE When opening the menu will not focus the active item
  but the role="menu" unless autoFocus is also set to false. Not using
  the default means not following WAI-ARIA authoring practices. Please
  be considerate about possible accessibility implications.

- MenuListProps `object`  
  Default is Props applied to the MenuList element.Deprecated use the
  slotProps.list prop instead. This prop will be removed in a future
  major release. See Migrating from deprecated APIs for more details.

- onClose `func`  
  Default is - Callback fired when the component requests to be
  closed.Signature:function(event: object, reason: string) = voidevent
  The event source of the callback.reason Can be: "escapeKeyDown",
  "backdropClick", "tabKeyDown".

- PopoverClasses `object`  
  Default is - classes prop applied to the Popover element.

- slotProps
  `{ backdrop?: func| object, list?: func| object, paper?: func| object, root?: func| object, transition?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ backdrop?: elementType, list?: elementType, paper?: elementType, root?: elementType, transition?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- transitionDuration
  `'auto'| number| { appear?: number, enter?: number, exit?: number }`  
  Default is 'auto' The length of the transition in ms, or 'auto'

- TransitionProps `object`  
  Default is Props applied to the transition element. By default, the
  element is based on this Transition component.Deprecated use the
  slotProps.transition prop instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- variant `'menu'| 'selectedMenu'`  
  Default is 'selectedMenu' The variant to use. Use menu to prevent
  selected items from impacting the initial focus.
