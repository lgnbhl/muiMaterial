# Autocomplete

<https://mui.com/material-ui/api/autocomplete/>

MUI's `Autocomplete` requires a `renderInput` function prop, which R
cannot express directly. The R wrapper resolves the input in this order:

1.  `renderInput` — pass an explicit
    [`JS()`](https://appsilon.github.io/shiny.react/reference/JS.html)
    callback for full control.

2.  A child element (e.g. `TextField(...)`, `OutlinedInput(...)`) — it
    is cloned and receives the `params` from MUI automatically. This is
    the recommended path: it stays close to the MUI API and survives
    upstream changes without touching R user code.

3.  `inputProps` — a named list of props forwarded to a default
    `TextField`. Kept for backward compatibility with older examples.

## Usage

``` r
Autocomplete(...)

Autocomplete.shinyInput(inputId, ..., value = NULL)

updateAutocomplete.shinyInput(
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

- options `array`  
  Default is - A list of options that will be shown in the Autocomplete.

- renderInput `func`  
  Default is - Render the input.Signature:function(params: object) =
  ReactNode

- autoComplete `bool`  
  Default is FALSE If true, the portion of the selected suggestion that
  the user hasn't typed, known as the completion string, appears inline
  after the input cursor in the textbox. The inline completion string is
  visually highlighted and has a selected state.

- autoHighlight `bool`  
  Default is FALSE If true, the first option is automatically
  highlighted.

- autoSelect `bool`  
  Default is FALSE If true, the selected option becomes the value of the
  input when the Autocomplete loses focus unless the user chooses a
  different option or changes the character string in the input.When
  using the freeSolo mode, the typed value will be the input value if
  the Autocomplete loses focus without highlighting an option.

- blurOnSelect `'mouse'| 'touch'| bool`  
  Default is FALSE Control if the input should be blurred when an option
  is selected: false the input is not blurred. true the input is always
  blurred. touch the input is blurred after a touch event. mouse the
  input is blurred after a mouse event.

- ChipProps `object`  
  Default is - Props applied to the Chip element.Deprecated Use
  slotProps.chip instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- clearIcon `node`  
  Default is ClearIcon fontSize="small". The icon to display in place of
  the default clear icon.

- clearOnBlur `bool`  
  Default is !props.freeSolo If true, the input's text is cleared on
  blur if no value is selected.Set it to true if you want to help the
  user enter a new value. Set it to false if you want to help the user
  resume their search.

- clearOnEscape `bool`  
  Default is FALSE If true, clear all values when the user presses
  escape and the popup is closed.

- clearText `string`  
  Default is 'Clear' Override the default text for the clear icon
  button.For localization purposes, you can use the provided
  translations.

- closeText `string`  
  Default is 'Close' Override the default text for the close popup icon
  button.For localization purposes, you can use the provided
  translations.

- componentsProps
  `{ clearIndicator?: object, paper?: object, popper?: object, popupIndicator?: object }`  
  Default is - The props used for each slot inside.Deprecated Use the
  slotProps prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- defaultValue `any`  
  Default is props.multiple ? \[\] : null The default value. Use when
  the component is not controlled.

- disableClearable `bool`  
  Default is FALSE If true, the input can't be cleared.

- disableCloseOnSelect `bool`  
  Default is FALSE If true, the popup won't close when a value is
  selected.

- disabled `bool`  
  Default is FALSE If true, the component is disabled.

- disabledItemsFocusable `bool`  
  Default is FALSE If true, will allow focus on disabled items.

- disableListWrap `bool`  
  Default is FALSE If true, the list box in the popup will not wrap
  focus.

- disablePortal `bool`  
  Default is FALSE If true, the Popper content will be under the DOM
  hierarchy of the parent component.

- filterOptions `func`  
  Default is createFilterOptions() A function that determines the
  filtered options to be rendered on search.Signature:function(options:
  Array, state: object) = Arrayoptions The options to render.state The
  state of the component.

- filterSelectedOptions `bool`  
  Default is FALSE If true, hide the selected options from the list box.

- forcePopupIcon `'auto'| bool`  
  Default is 'auto' Force the visibility display of the popup icon.

- freeSolo `bool`  
  Default is FALSE If true, the Autocomplete is free solo, meaning that
  the user input is not bound to provided options.

- fullWidth `bool`  
  Default is FALSE If true, the input will take up the full width of its
  container.

- getLimitTagsText `func`  
  Default is (more) = `+$more` The label to display when the tags are
  truncated (limitTags).Signature:function(more: number) = ReactNodemore
  The number of truncated tags.

- getOptionDisabled `func`  
  Default is - Used to determine the disabled state for a given
  option.Signature:function(option: Value) = booleanoption The option to
  test.

- getOptionKey `func`  
  Default is - Used to determine the key for a given option. This can be
  useful when the labels of options are not unique (since labels are
  used as keys by default).Signature:function(option: Value) = string \|
  numberoption The option to get the key for.

- getOptionLabel `func`  
  Default is (option) = option.label ?? option Used to determine the
  string value for a given option. It's used to fill the input (and the
  list box options if renderOption is not provided).If used in free solo
  mode, it must accept both the type of the options and a
  string.Signature:function(option: Value) = string

- groupBy `func`  
  Default is - If provided, the options will be grouped under the
  returned string. The groupBy value is also used as the text for group
  headings when renderGroup is not provided.Signature:function(option:
  Value) = stringoption The Autocomplete option.

- handleHomeEndKeys `bool`  
  Default is !props.freeSolo If true, the component handles the "Home"
  and "End" keys when the popup is open. It should move focus to the
  first option and last option, respectively.

- id `string`  
  Default is - This prop is used to help implement the accessibility
  logic. If you don't provide an id it will fall back to a randomly
  generated one.

- includeInputInList `bool`  
  Default is FALSE If true, the highlight can move to the input.

- inputValue `string`  
  Default is - The input value.

- isOptionEqualToValue `func`  
  Default is - Used to determine if the option represents the given
  value. Uses strict equality by default. Both arguments need to be
  handled, an option can only match with one
  value.Signature:function(option: Value, value: Value) = booleanoption
  The option to test.value The value to test against.

- limitTags `integer`  
  Default is -1 The maximum number of tags that will be visible when not
  focused. Set -1 to disable the limit.

- ListboxComponent `elementType`  
  Default is 'ul' The component used to render the listbox.Deprecated
  Use slotProps.listbox.component instead. This prop will be removed in
  a future major release. See Migrating from deprecated APIs for more
  details.

- ListboxProps `object`  
  Default is - Props applied to the Listbox element.Deprecated Use
  slotProps.listbox instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- loading `bool`  
  Default is FALSE If true, the component is in a loading state. This
  shows the loadingText in place of suggestions (only if there are no
  suggestions to show, for example options are empty).

- loadingText `node`  
  Default is 'Loading80' Text to display when in a loading state.For
  localization purposes, you can use the provided translations.

- multiple `bool`  
  Default is FALSE If true, value must be an array and the menu will
  support multiple selections.

- noOptionsText `node`  
  Default is 'No options' Text to display when there are no options.For
  localization purposes, you can use the provided translations.

- onChange `func`  
  Default is - Callback fired when the value
  changes.Signature:function(event: React.SyntheticEvent, value: Value
  \| Array, reason: string, details?: string) = voidevent The event
  source of the callback.value The new value of the component.reason One
  of "createOption", "selectOption", "removeOption", "blur" or "clear".

- onClose `func`  
  Default is - Callback fired when the popup requests to be closed. Use
  in controlled mode (see open).Signature:function(event:
  React.SyntheticEvent, reason: string) = voidevent The event source of
  the callback.reason Can be: "toggleInput", "escape", "selectOption",
  "removeOption", "blur".

- onHighlightChange `func`  
  Default is - Callback fired when the highlight option
  changes.Signature:function(event: React.SyntheticEvent, option: Value,
  reason: string) = voidevent The event source of the callback.option
  The highlighted option.reason Can be: "keyboard", "mouse", "touch".

- onInputChange `func`  
  Default is - Callback fired when the input value
  changes.Signature:function(event: React.SyntheticEvent, value: string,
  reason: string) = voidevent The event source of the callback.value The
  new value of the text input.reason Can be: "input" (user input),
  "reset" (programmatic change), "clear", "blur", "selectOption",
  "removeOption"

- onOpen `func`  
  Default is - Callback fired when the popup requests to be opened. Use
  in controlled mode (see open).Signature:function(event:
  React.SyntheticEvent) = voidevent The event source of the callback.

- open `bool`  
  Default is - If true, the component is shown.

- openOnFocus `bool`  
  Default is FALSE If true, the popup will open on input focus.

- openText `string`  
  Default is 'Open' Override the default text for the open popup icon
  button.For localization purposes, you can use the provided
  translations.

- PaperComponent `elementType`  
  Default is Paper The component used to render the body of the
  popup.Deprecated Use slots.paper instead. This prop will be removed in
  a future major release. See Migrating from deprecated APIs for more
  details.

- PopperComponent `elementType`  
  Default is Popper The component used to position the popup.Deprecated
  Use slots.popper instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- popupIcon `node`  
  Default is ArrowDropDownIcon. The icon to display in place of the
  default popup icon.

- readOnly `bool`  
  Default is FALSE If true, the component becomes readonly. It is also
  supported for multiple tags where the tag cannot be deleted.

- renderGroup `func`  
  Default is - Render the group.Signature:function(params:
  AutocompleteRenderGroupParams) = ReactNodeparams The group to render.

- renderOption `func`  
  Default is - Render the option, use getOptionLabel by
  default.Signature:function(props: object, option: Value, state:
  object, ownerState: object) = ReactNodeprops The props to apply on the
  li element.option The option to render.state The state of each
  option.ownerState The state of the Autocomplete component.

- renderTags `func`  
  Default is - Render the selected value.Signature:function(value:
  Array, getTagProps: function, ownerState: object) = ReactNodevalue The
  value provided to the component.getTagProps A tag props
  getter.ownerState The state of the Autocomplete component.

- selectOnFocus `bool`  
  Default is !props.freeSolo If true, the input's text is selected on
  focus. It helps the user clear the selected value.

- size `'small'| 'medium'| string`  
  Default is 'medium' The size of the component.

- slotProps
  `{ chip?: func| object, clearIndicator?: func| object, listbox?: func| object, paper?: func| object, popper?: func| object, popupIndicator?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ listbox?: elementType, paper?: elementType, popper?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- value `any`  
  Default is - The value of the autocomplete.The value must have
  reference equality with the option in order to be selected. You can
  customize the equality behavior with the isOptionEqualToValue prop.

## Examples

``` r
if (FALSE) { # interactive()
library(shiny)
library(muiMaterial)

ui <- muiMaterialPage(
  CssBaseline(),
  Autocomplete.shinyInput(
    inputId = "auto",
    options = c("Apple", "Banana", "Cherry"),
    TextField(label = "Fruit")
  ),
  verbatimTextOutput("out")
)

server <- function(input, output, session) {
  output$out <- renderPrint(input$auto)
}

shinyApp(ui, server)
}
```
