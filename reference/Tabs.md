# Tabs

<https://mui.com/material-ui/api/tabs/>

## Usage

``` r
Tabs(...)

Tabs.shinyInput(inputId, ..., value = defaultValue)

updateTabs.shinyInput(
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

- value:

  Starting value.

- session:

  Object passed as the \`session\` argument to Shiny server.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- action `ref`  
  Default is - Callback fired when the component mounts. This is useful
  when you want to trigger an action programmatically. It supports two
  actions: updateIndicator() and updateScrollButtons()

- allowScrollButtonsMobile `bool`  
  Default is FALSE If true, the scroll buttons aren't forced hidden on
  mobile. By default the scroll buttons are hidden on mobile and takes
  precedence over scrollButtons.

- aria-label `string`  
  Default is - The label for the Tabs as a string.

- aria-labelledby `string`  
  Default is - An id or list of ids separated by a space that label the
  Tabs.

- centered `bool`  
  Default is FALSE If true, the tabs are centered. This prop is intended
  for large views.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- indicatorColor `'primary'| 'secondary'| string`  
  Default is 'primary' Determines the color of the indicator.

- onChange `func`  
  Default is - Callback fired when the value
  changes.Signature:function(event: React.SyntheticEvent, value: any) =
  voidevent The event source of the callback. Warning: This is a generic
  event not a change event.value We default to the index of the child
  (number)

- orientation `'horizontal'| 'vertical'`  
  Default is 'horizontal' The component orientation (layout flow
  direction).

- ScrollButtonComponent `elementType`  
  Default is TabScrollButton The component used to render the scroll
  buttons.Deprecated use the slots.scrollButtons prop instead. This prop
  will be removed in a future major release. See Migrating from
  deprecated APIs for more details.

- scrollButtons `'auto'| false| true`  
  Default is 'auto' Determine behavior of scroll buttons when tabs are
  set to scroll: auto will only present them when not all the items are
  visible. true will always present them. false will never present them.
  By default the scroll buttons are hidden on mobile. This behavior can
  be disabled with allowScrollButtonsMobile.

- selectionFollowsFocus `bool`  
  Default is - If true the selected tab changes on focus. Otherwise it
  only changes on activation.

- slotProps
  `{ endScrollButtonIcon?: func| object, indicator?: func| object, list?: func| object, root?: func| object, scrollbar?: func| object, scrollButtons?: func| object, scroller?: func| object, startScrollButtonIcon?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ endScrollButtonIcon?: elementType, EndScrollButtonIcon?: elementType, indicator?: elementType, list?: elementType, root?: elementType, scrollbar?: elementType, scrollButtons?: elementType, scroller?: elementType, startScrollButtonIcon?: elementType, StartScrollButtonIcon?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- TabIndicatorProps `object`  
  Default is Props applied to the tab indicator element.Deprecated use
  the slotProps.indicator prop instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- TabScrollButtonProps `object`  
  Default is Props applied to the TabScrollButton element.Deprecated use
  the slotProps.scrollButtons prop instead. This prop will be removed in
  a future major release. See Migrating from deprecated APIs for more
  details.

- textColor `'inherit'| 'primary'| 'secondary'`  
  Default is 'primary' Determines the color of the Tab.

- value `any`  
  Default is - The value of the currently selected Tab. If you don't
  want any selected Tab, you can set this prop to false.

- variant `'fullWidth'| 'scrollable'| 'standard'`  
  Default is 'standard' Determines additional display behavior of the
  tabs: scrollable will invoke scrolling properties and allow for
  horizontally scrolling (or swiping) of the tab bar. fullWidth will
  make the tabs grow to use all the available space, which should be
  used for small views, like on mobile. standard will render the default
  state.

- visibleScrollbar `bool`  
  Default is FALSE If true, the scrollbar is visible. It can be useful
  when displaying a long vertical list of tabs.
