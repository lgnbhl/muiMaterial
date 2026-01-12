#' Accordion
#'
#' @description \url{https://mui.com/material-ui/api/accordion/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item defaultExpanded `bool` \cr Default is FALSE If true, expands the accordion by default.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableGutters `bool` \cr Default is FALSE If true, it removes the margin between two expanded accordion items and the increase of height.
#' \item expanded `bool` \cr Default is - If true, expands the accordion, otherwise collapse it. Setting this prop enables control over the accordion.
#' \item onChange `func` \cr Default is - Callback fired when the expand/collapse state is changed.Signature:function(event: React.SyntheticEvent, expanded: boolean) =  voidevent The event source of the callback. Warning: This is a generic event not a change event.expanded The expanded state of the accordion.
#' \item slotProps `{ heading?: func| object, root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ heading?: elementType, root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item square `bool` \cr Default is FALSE If true, rounded corners are disabled.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TransitionComponent `elementType` \cr Default is - The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated Use slots.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item TransitionProps `object` \cr Default is - Props applied to the transition element. By default, the element is based on this Transition component.Deprecated Use slotProps.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name Accordion
NULL

#' AccordionActions
#'
#' @description \url{https://mui.com/material-ui/api/accordion-actions/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disableSpacing `bool` \cr Default is FALSE If true, the actions do not have additional margin.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name AccordionActions
NULL

#' AccordionDetails
#'
#' @description \url{https://mui.com/material-ui/api/accordion-details/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name AccordionDetails
NULL

#' AccordionSummary
#'
#' @description \url{https://mui.com/material-ui/api/accordion-summary/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item expandIcon `node` \cr Default is - The icon to display as the expand indicator.
#' \item focusVisibleClassName `string` \cr Default is - This prop can help identify which element has keyboard focus. The class name will be applied when the element gains the focus through keyboard interaction. It's a polyfill for the CSS :focus-visible selector. The rationale for using this feature is explained here. A polyfill can be used to apply a focus-visible class to other components if needed.
#' \item slotProps `{ content?: func| object, expandIconWrapper?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ content?: elementType, expandIconWrapper?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name AccordionSummary
NULL

#' Alert
#'
#' @description \url{https://mui.com/material-ui/api/alert/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item action `node` \cr Default is - The action to display. It renders after the message, at the end of the alert.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item closeText `string` \cr Default is 'Close' Override the default label for the close popup icon button.For localization purposes, you can use the provided translations.
#' \item color `'error'| 'info'| 'success'| 'warning'| string` \cr Default is - The color of the component. Unless provided, the value is taken from the severity prop. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item components `{ CloseButton?: elementType, CloseIcon?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ closeButton?: object, closeIcon?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item icon `node` \cr Default is - Override the icon displayed before the children. Unless provided, the icon is mapped to the value of the severity prop. Set to false to remove the icon.
#' \item iconMapping `{ error?: node, info?: node, success?: node, warning?: node }` \cr Default is - The component maps the severity prop to a range of different icons, for instance success to successoutlined. If you wish to change this mapping, you can provide your own. Alternatively, you can use the icon prop to override the icon displayed.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed. When provided and no action prop is set, a close icon button is displayed that triggers the callback when clicked.Signature:function(event: React.SyntheticEvent) =  voidevent The event source of the callback.
#' \item role `string` \cr Default is 'alert' The ARIA role attribute of the element.
#' \item severity `'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'success' The severity of the alert. This defines the color and icon used.
#' \item slotProps `{ action?: func| object, closeButton?: func| object, closeIcon?: func| object, icon?: func| object, message?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ action?: elementType, closeButton?: elementType, closeIcon?: elementType, icon?: elementType, message?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'filled'| 'outlined'| 'standard'| string` \cr Default is 'standard' The variant to use.
#' }
#'
#' @md
#' @name Alert
NULL

#' AlertTitle
#'
#' @description \url{https://mui.com/material-ui/api/alert-title/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name AlertTitle
NULL

#' AppBar
#'
#' @description \url{https://mui.com/material-ui/api/app-bar/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'default'| 'inherit'| 'primary'| 'secondary'| 'transparent'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item enableColorOnDark `bool` \cr Default is FALSE If true, the color prop is applied in dark mode.
#' \item position `'absolute'| 'fixed'| 'relative'| 'static'| 'sticky'` \cr Default is 'fixed' The positioning type. The behavior of the different options is described in the MDN web docs. Note: sticky is not universally supported and will fall back to static when unavailable.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name AppBar
NULL

#' Autocomplete
#'
#' @description \url{https://mui.com/material-ui/api/autocomplete/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item options `array` \cr Default is - A list of options that will be shown in the Autocomplete.
#' \item renderInput `func` \cr Default is - Render the input.Signature:function(params: object) =  ReactNode
#' \item autoComplete `bool` \cr Default is FALSE If true, the portion of the selected suggestion that the user hasn't typed, known as the completion string, appears inline after the input cursor in the textbox. The inline completion string is visually highlighted and has a selected state.
#' \item autoHighlight `bool` \cr Default is FALSE If true, the first option is automatically highlighted.
#' \item autoSelect `bool` \cr Default is FALSE If true, the selected option becomes the value of the input when the Autocomplete loses focus unless the user chooses a different option or changes the character string in the input.When using the freeSolo mode, the typed value will be the input value if the Autocomplete loses focus without highlighting an option.
#' \item blurOnSelect `'mouse'| 'touch'| bool` \cr Default is FALSE Control if the input should be blurred when an option is selected: false the input is not blurred. true the input is always blurred. touch the input is blurred after a touch event. mouse the input is blurred after a mouse event.
#' \item ChipProps `object` \cr Default is - Props applied to the Chip element.Deprecated Use slotProps.chip instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item clearIcon `node` \cr Default is ClearIcon fontSize="small". The icon to display in place of the default clear icon.
#' \item clearOnBlur `bool` \cr Default is !props.freeSolo If true, the input's text is cleared on blur if no value is selected.Set it to true if you want to help the user enter a new value. Set it to false if you want to help the user resume their search.
#' \item clearOnEscape `bool` \cr Default is FALSE If true, clear all values when the user presses escape and the popup is closed.
#' \item clearText `string` \cr Default is 'Clear' Override the default text for the clear icon button.For localization purposes, you can use the provided translations.
#' \item closeText `string` \cr Default is 'Close' Override the default text for the close popup icon button.For localization purposes, you can use the provided translations.
#' \item componentsProps `{ clearIndicator?: object, paper?: object, popper?: object, popupIndicator?: object }` \cr Default is - The props used for each slot inside.Deprecated Use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item defaultValue `any` \cr Default is props.multiple ? [] : null The default value. Use when the component is not controlled.
#' \item disableClearable `bool` \cr Default is FALSE If true, the input can't be cleared.
#' \item disableCloseOnSelect `bool` \cr Default is FALSE If true, the popup won't close when a value is selected.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disabledItemsFocusable `bool` \cr Default is FALSE If true, will allow focus on disabled items.
#' \item disableListWrap `bool` \cr Default is FALSE If true, the list box in the popup will not wrap focus.
#' \item disablePortal `bool` \cr Default is FALSE If true, the Popper content will be under the DOM hierarchy of the parent component.
#' \item filterOptions `func` \cr Default is createFilterOptions() A function that determines the filtered options to be rendered on search.Signature:function(options: Array, state: object) =  Arrayoptions The options to render.state The state of the component.
#' \item filterSelectedOptions `bool` \cr Default is FALSE If true, hide the selected options from the list box.
#' \item forcePopupIcon `'auto'| bool` \cr Default is 'auto' Force the visibility display of the popup icon.
#' \item freeSolo `bool` \cr Default is FALSE If true, the Autocomplete is free solo, meaning that the user input is not bound to provided options.
#' \item fullWidth `bool` \cr Default is FALSE If true, the input will take up the full width of its container.
#' \item getLimitTagsText `func` \cr Default is (more) =  `+$more` The label to display when the tags are truncated (limitTags).Signature:function(more: number) =  ReactNodemore The number of truncated tags.
#' \item getOptionDisabled `func` \cr Default is - Used to determine the disabled state for a given option.Signature:function(option: Value) =  booleanoption The option to test.
#' \item getOptionKey `func` \cr Default is - Used to determine the key for a given option. This can be useful when the labels of options are not unique (since labels are used as keys by default).Signature:function(option: Value) =  string | numberoption The option to get the key for.
#' \item getOptionLabel `func` \cr Default is (option) =  option.label ?? option Used to determine the string value for a given option. It's used to fill the input (and the list box options if renderOption is not provided).If used in free solo mode, it must accept both the type of the options and a string.Signature:function(option: Value) =  string
#' \item groupBy `func` \cr Default is - If provided, the options will be grouped under the returned string. The groupBy value is also used as the text for group headings when renderGroup is not provided.Signature:function(option: Value) =  stringoption The Autocomplete option.
#' \item handleHomeEndKeys `bool` \cr Default is !props.freeSolo If true, the component handles the "Home" and "End" keys when the popup is open. It should move focus to the first option and last option, respectively.
#' \item id `string` \cr Default is - This prop is used to help implement the accessibility logic. If you don't provide an id it will fall back to a randomly generated one.
#' \item includeInputInList `bool` \cr Default is FALSE If true, the highlight can move to the input.
#' \item inputValue `string` \cr Default is - The input value.
#' \item isOptionEqualToValue `func` \cr Default is - Used to determine if the option represents the given value. Uses strict equality by default.  ️ Both arguments need to be handled, an option can only match with one value.Signature:function(option: Value, value: Value) =  booleanoption The option to test.value The value to test against.
#' \item limitTags `integer` \cr Default is -1 The maximum number of tags that will be visible when not focused. Set -1 to disable the limit.
#' \item ListboxComponent `elementType` \cr Default is 'ul' The component used to render the listbox.Deprecated Use slotProps.listbox.component instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item ListboxProps `object` \cr Default is - Props applied to the Listbox element.Deprecated Use slotProps.listbox instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item loading `bool` \cr Default is FALSE If true, the component is in a loading state. This shows the loadingText in place of suggestions (only if there are no suggestions to show, for example options are empty).
#' \item loadingText `node` \cr Default is 'Loading…' Text to display when in a loading state.For localization purposes, you can use the provided translations.
#' \item multiple `bool` \cr Default is FALSE If true, value must be an array and the menu will support multiple selections.
#' \item noOptionsText `node` \cr Default is 'No options' Text to display when there are no options.For localization purposes, you can use the provided translations.
#' \item onChange `func` \cr Default is - Callback fired when the value changes.Signature:function(event: React.SyntheticEvent, value: Value | Array, reason: string, details?: string) =  voidevent The event source of the callback.value The new value of the component.reason One of "createOption", "selectOption", "removeOption", "blur" or "clear".
#' \item onClose `func` \cr Default is - Callback fired when the popup requests to be closed. Use in controlled mode (see open).Signature:function(event: React.SyntheticEvent, reason: string) =  voidevent The event source of the callback.reason Can be: "toggleInput", "escape", "selectOption", "removeOption", "blur".
#' \item onHighlightChange `func` \cr Default is - Callback fired when the highlight option changes.Signature:function(event: React.SyntheticEvent, option: Value, reason: string) =  voidevent The event source of the callback.option The highlighted option.reason Can be: "keyboard", "mouse", "touch".
#' \item onInputChange `func` \cr Default is - Callback fired when the input value changes.Signature:function(event: React.SyntheticEvent, value: string, reason: string) =  voidevent The event source of the callback.value The new value of the text input.reason Can be: "input" (user input), "reset" (programmatic change), "clear", "blur", "selectOption", "removeOption"
#' \item onOpen `func` \cr Default is - Callback fired when the popup requests to be opened. Use in controlled mode (see open).Signature:function(event: React.SyntheticEvent) =  voidevent The event source of the callback.
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item openOnFocus `bool` \cr Default is FALSE If true, the popup will open on input focus.
#' \item openText `string` \cr Default is 'Open' Override the default text for the open popup icon button.For localization purposes, you can use the provided translations.
#' \item PaperComponent `elementType` \cr Default is Paper The component used to render the body of the popup.Deprecated Use slots.paper instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item PopperComponent `elementType` \cr Default is Popper The component used to position the popup.Deprecated Use slots.popper instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item popupIcon `node` \cr Default is ArrowDropDownIcon. The icon to display in place of the default popup icon.
#' \item readOnly `bool` \cr Default is FALSE If true, the component becomes readonly. It is also supported for multiple tags where the tag cannot be deleted.
#' \item renderGroup `func` \cr Default is - Render the group.Signature:function(params: AutocompleteRenderGroupParams) =  ReactNodeparams The group to render.
#' \item renderOption `func` \cr Default is - Render the option, use getOptionLabel by default.Signature:function(props: object, option: Value, state: object, ownerState: object) =  ReactNodeprops The props to apply on the li element.option The option to render.state The state of each option.ownerState The state of the Autocomplete component.
#' \item renderTags `func` \cr Default is - Render the selected value.Signature:function(value: Array, getTagProps: function, ownerState: object) =  ReactNodevalue The value provided to the component.getTagProps A tag props getter.ownerState The state of the Autocomplete component.
#' \item selectOnFocus `bool` \cr Default is !props.freeSolo If true, the input's text is selected on focus. It helps the user clear the selected value.
#' \item size `'small'| 'medium'| string` \cr Default is 'medium' The size of the component.
#' \item slotProps `{ chip?: func| object, clearIndicator?: func| object, listbox?: func| object, paper?: func| object, popper?: func| object, popupIndicator?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ listbox?: elementType, paper?: elementType, popper?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The value of the autocomplete.The value must have reference equality with the option in order to be selected. You can customize the equality behavior with the isOptionEqualToValue prop.
#' }
#'
#' @md
#' @name Autocomplete
NULL

#' Avatar
#'
#' @description \url{https://mui.com/material-ui/api/avatar/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item alt `string` \cr Default is - Used in combination with src or srcSet to provide an alt attribute for the rendered img element.
#' \item children `node` \cr Default is - Used to render icon or text elements inside the Avatar if src is not set. This can be an element, or just a string.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item imgProps `object` \cr Default is - Attributes applied to the img element if the component is used to display an image. It can be used to listen for the loading error event.Deprecated Use slotProps.img instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item sizes `string` \cr Default is - The sizes attribute for the img element.
#' \item slotProps `{ img?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ img?: elementType }` \cr Default is  The components used for each slot inside.
#' \item src `string` \cr Default is - The src attribute for the img element.
#' \item srcSet `string` \cr Default is - The srcSet attribute for the img element. Use this attribute for responsive image display.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'circular'| 'rounded'| 'square'| string` \cr Default is 'circular' The shape of the avatar.
#' }
#'
#' @md
#' @name Avatar
NULL

#' AvatarGroup
#'
#' @description \url{https://mui.com/material-ui/api/avatar-group/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The avatars to stack.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item componentsProps `{ additionalAvatar?: object }` \cr Default is - The extra props for the slot components. You can override the existing props or add new ones.This prop is an alias for the slotProps prop.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item max `number` \cr Default is 5 Max avatars to show before +x.
#' \item renderSurplus `func` \cr Default is - custom renderer of extraAvatarsSignature:function(surplus: number) =  React.ReactNodesurplus number of extra avatarsReturns: custom element to display
#' \item slotProps `{ additionalAvatar?: object, surplus?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ surplus?: elementType }` \cr Default is  The components used for each slot inside.
#' \item spacing `'medium'| 'small'| number` \cr Default is 'medium' Spacing between avatars.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item total `number` \cr Default is children.length The total number of avatars. Used for calculating the number of extra avatars.
#' \item variant `'circular'| 'rounded'| 'square'| string` \cr Default is 'circular' The variant to use.
#' }
#'
#' @md
#' @name AvatarGroup
NULL

#' Backdrop
#'
#' @description \url{https://mui.com/material-ui/api/backdrop/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item components `{ Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated Use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated Use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item invisible `bool` \cr Default is FALSE If true, the backdrop is invisible. It can be used when rendering a popover or a custom select component.
#' \item slotProps `{ root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TransitionComponent `elementType` \cr Default is Fade The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated Use slots.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item transitionDuration `number| { appear?: number, enter?: number, exit?: number }` \cr Default is - The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' }
#'
#' @md
#' @name Backdrop
NULL

#' Badge
#'
#' @description \url{https://mui.com/material-ui/api/badge/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item anchorOrigin `{ horizontal?: 'left'| 'right', vertical?: 'bottom'| 'top' }` \cr Default is    vertical: 'top',   horizontal: 'right',  The anchor of the badge.
#' \item badgeContent `node` \cr Default is - The content rendered within the badge.
#' \item children `node` \cr Default is - The badge will be added relative to this node.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'default' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item components `{ Badge?: elementType, Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ badge?: func| object, root?: func| object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item invisible `bool` \cr Default is FALSE If true, the badge is invisible.
#' \item max `number` \cr Default is 99 Max count to show.
#' \item overlap `'circular'| 'rectangular'` \cr Default is 'rectangular' Wrapped shape the badge should overlap.
#' \item showZero `bool` \cr Default is FALSE Controls whether the badge is hidden when badgeContent is zero.
#' \item slotProps `{ badge?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside the Badge.
#' \item slots `{ badge?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside the Badge. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'dot'| 'standard'| string` \cr Default is 'standard' The variant to use.
#' }
#'
#' @md
#' @name Badge
NULL

#' BottomNavigation
#'
#' @description \url{https://mui.com/material-ui/api/bottom-navigation/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item onChange `func` \cr Default is - Callback fired when the value changes.Signature:function(event: React.SyntheticEvent, value: any) =  voidevent The event source of the callback. Warning: This is a generic event not a change event.value We default to the index of the child.
#' \item showLabels `bool` \cr Default is FALSE If true, all BottomNavigationActions will show their labels. By default, only the selected BottomNavigationAction will show its label.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The value of the currently selected BottomNavigationAction.
#' }
#'
#' @md
#' @name BottomNavigation
NULL

#' BottomNavigationAction
#'
#' @description \url{https://mui.com/material-ui/api/bottom-navigation-action/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `unsupportedProp` \cr Default is NA This prop isn't supported. Use the component prop if you need to change the children structure.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item icon `node` \cr Default is NA The icon to display.
#' \item label `node` \cr Default is NA The label element.
#' \item showLabel `bool` \cr Default is NA If true, the BottomNavigationAction will show its label. By default, only the selected BottomNavigationAction inside BottomNavigation will show its label.The prop defaults to the value (false) inherited from the parent BottomNavigation component.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is NA You can provide your own value. Otherwise, we fallback to the child position index.
#' }
#'
#' @md
#' @name BottomNavigationAction
NULL

#' Box
#'
#' @description \url{https://mui.com/material-ui/api/box/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Box
NULL

#' Breadcrumbs
#'
#' @description \url{https://mui.com/material-ui/api/breadcrumbs/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item expandText `string` \cr Default is 'Show path' Override the default label for the expand button.For localization purposes, you can use the provided translations.
#' \item itemsAfterCollapse `integer` \cr Default is 1 If max items is exceeded, the number of items to show after the ellipsis.
#' \item itemsBeforeCollapse `integer` \cr Default is 1 If max items is exceeded, the number of items to show before the ellipsis.
#' \item maxItems `integer` \cr Default is 8 Specifies the maximum number of breadcrumbs to display. When there are more than the maximum number, only the first itemsBeforeCollapse and last itemsAfterCollapse will be shown, with an ellipsis in between.
#' \item separator `node` \cr Default is '/' Custom separator node.
#' \item slotProps `{ collapsedIcon?: func| object }` \cr Default is  The props used for each slot inside the Breadcumb.
#' \item slots `{ CollapsedIcon?: elementType }` \cr Default is  The components used for each slot inside the Breadcumb. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Breadcrumbs
NULL

#' Button
#'
#' @description \url{https://mui.com/material-ui/api/button/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'inherit'| 'primary'| 'secondary'| 'success'| 'error'| 'info'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableElevation `bool` \cr Default is FALSE If true, no elevation is used.
#' \item disableFocusRipple `bool` \cr Default is FALSE If true, the  keyboard focus ripple is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled. ️ Without a ripple there is no styling for :focus-visible by default. Be sure to highlight the element by applying separate styles with the .Mui-focusVisible class.
#' \item endIcon `node` \cr Default is - Element placed after the children.
#' \item fullWidth `bool` \cr Default is FALSE If true, the button will take up the full width of its container.
#' \item href `string` \cr Default is - The URL to link to when the button is clicked. If defined, an a element will be used as the root node.
#' \item loading `bool` \cr Default is null If true, the loading indicator is visible and the button is disabled. If true | false, the loading wrapper is always rendered before the children to prevent Google Translation Crash.
#' \item loadingIndicator `node` \cr Default is  CircularProgress color="inherit" size=16 /  Element placed before the children if the button is in loading state. The node should contain an element with role="progressbar" with an accessible name. By default, it renders a CircularProgress that is labeled by the button itself.
#' \item loadingPosition `'center'| 'end'| 'start'` \cr Default is 'center' The loading indicator can be positioned on the start, end, or the center of the button.
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component. small is equivalent to the dense button styling.
#' \item startIcon `node` \cr Default is - Element placed before the children.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'contained'| 'outlined'| 'text'| string` \cr Default is 'text' The variant to use.
#' }
#'
#' @md
#' @name Button
NULL

#' ButtonBase
#'
#' @description \url{https://mui.com/material-ui/api/button-base/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item action `ref` \cr Default is - A ref for imperative actions. It currently only supports focusVisible() action.
#' \item centerRipple `bool` \cr Default is FALSE If true, the ripples are centered. They won't start at the cursor interaction position.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `element type` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.This needs to be able to hold a ref.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled. ️ Without a ripple there is no styling for :focus-visible by default. Be sure to highlight the element by applying separate styles with the .Mui-focusVisible class.
#' \item disableTouchRipple `bool` \cr Default is FALSE If true, the touch ripple effect is disabled.
#' \item focusRipple `bool` \cr Default is FALSE If true, the base button will have a keyboard focus ripple.
#' \item focusVisibleClassName `string` \cr Default is - This prop can help identify which element has keyboard focus. The class name will be applied when the element gains the focus through keyboard interaction. It's a polyfill for the CSS :focus-visible selector. The rationale for using this feature is explained here. A polyfill can be used to apply a focus-visible class to other components if needed.
#' \item LinkComponent `elementType` \cr Default is 'a' The component used to render a link when the href prop is provided.
#' \item onFocusVisible `func` \cr Default is - Callback fired when the component is focused with a keyboard. We trigger a onFocus callback too.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TouchRippleProps `object` \cr Default is - Props applied to the TouchRipple element.
#' \item touchRippleRef `func| { current?: { pulsate: func, start: func, stop: func } }` \cr Default is - A ref that points to the TouchRipple element.
#' }
#'
#' @md
#' @name ButtonBase
NULL

#' ButtonGroup
#'
#' @description \url{https://mui.com/material-ui/api/button-group/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'inherit'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableElevation `bool` \cr Default is FALSE If true, no elevation is used.
#' \item disableFocusRipple `bool` \cr Default is FALSE If true, the button keyboard focus ripple is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the button ripple effect is disabled.
#' \item fullWidth `bool` \cr Default is FALSE If true, the buttons will take up the full width of its container.
#' \item orientation `'horizontal'| 'vertical'` \cr Default is 'horizontal' The component orientation (layout flow direction).
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component. small is equivalent to the dense button styling.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'contained'| 'outlined'| 'text'| string` \cr Default is 'outlined' The variant to use.
#' }
#'
#' @md
#' @name ButtonGroup
NULL

#' Card
#'
#' @description \url{https://mui.com/material-ui/api/card/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item raised `bool` \cr Default is FALSE If true, the card will use raised styling.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Card
NULL

#' CardActionArea
#'
#' @description \url{https://mui.com/material-ui/api/card-action-area/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name CardActionArea
NULL

#' CardActions
#'
#' @description \url{https://mui.com/material-ui/api/card-actions/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disableSpacing `bool` \cr Default is FALSE If true, the actions do not have additional margin.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name CardActions
NULL

#' CardContent
#'
#' @description \url{https://mui.com/material-ui/api/card-content/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name CardContent
NULL

#' CardHeader
#'
#' @description \url{https://mui.com/material-ui/api/card-header/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item action `node` \cr Default is - The action to display in the card header.
#' \item avatar `node` \cr Default is - The Avatar element to display.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disableTypography `bool` \cr Default is FALSE If true, subheader and title won't be wrapped by a Typography component. This can be useful to render an alternative Typography variant by wrapping the title text, and optional subheader text with the Typography component.
#' \item slotProps `{ action?: func| object, avatar?: func| object, content?: func| object, root?: func| object, subheader?: func| object, title?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ action?: elementType, avatar?: elementType, content?: elementType, root?: elementType, subheader?: elementType, title?: elementType }` \cr Default is  The components used for each slot inside.
#' \item subheader `node` \cr Default is - The content of the component.
#' \item subheaderTypographyProps `object` \cr Default is - These props will be forwarded to the subheader (as long as disableTypography is not true).Deprecated Use slotProps.subheader instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item title `node` \cr Default is - The content of the component.
#' \item titleTypographyProps `object` \cr Default is - These props will be forwarded to the title (as long as disableTypography is not true).Deprecated Use slotProps.title instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name CardHeader
NULL

#' CardMedia
#'
#' @description \url{https://mui.com/material-ui/api/card-media/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item image `string` \cr Default is NA Image to be displayed as a background image. Either image or src prop must be specified. Note that caller must specify height otherwise the image will not be visible.
#' \item src `string` \cr Default is NA An alias for image property. Available only with media components. Media components: video, audio, picture, iframe, img.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name CardMedia
NULL

#' Checkbox
#'
#' @description \url{https://mui.com/material-ui/api/checkbox/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item checked `bool` \cr Default is - If true, the component is checked.
#' \item checkedIcon `node` \cr Default is  CheckBoxIcon /  The icon to display when the component is checked.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item defaultChecked `bool` \cr Default is - The default checked state. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled.
#' \item icon `node` \cr Default is  CheckBoxOutlineBlankIcon /  The icon to display when the component is unchecked.
#' \item id `string` \cr Default is - The id of the input element.
#' \item indeterminate `bool` \cr Default is FALSE If true, the component appears indeterminate. This does not set the native input element to indeterminate due to inconsistent behavior across browsers. However, we set a data-indeterminate attribute on the input.
#' \item indeterminateIcon `node` \cr Default is  IndeterminateCheckBoxIcon /  The icon to display when the component is indeterminate.
#' \item inputProps `object` \cr Default is - Attributes applied to the input element.Deprecated Use slotProps.input instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item onChange `func` \cr Default is - Callback fired when the state is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new checked state by accessing event.target.checked (boolean).
#' \item required `bool` \cr Default is FALSE If true, the input element is required.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' The size of the component. small is equivalent to the dense checkbox styling.
#' \item slotProps `{ input?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ input?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The value of the component. The DOM API casts this to a string. The browser uses "on" as the default value.
#' }
#'
#' @md
#' @name Checkbox
NULL

#' Chip
#'
#' @description \url{https://mui.com/material-ui/api/chip/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item avatar `element` \cr Default is - The Avatar element to display.
#' \item children `unsupportedProp` \cr Default is - This prop isn't supported. Use the component prop if you need to change the children structure.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item clickable `bool` \cr Default is - If true, the chip will appear clickable, and will raise when pressed, even if the onClick prop is not defined. If false, the chip will not appear clickable, even if onClick prop is defined. This can be used, for example, along with the component prop to indicate an anchor Chip is clickable. Note: this controls the UI and does not affect the onClick event.
#' \item color `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'default' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item deleteIcon `element` \cr Default is - Override the default delete icon element. Shown only if onDelete is set.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item icon `element` \cr Default is - Icon element.
#' \item label `node` \cr Default is - The content of the component.
#' \item onDelete `func` \cr Default is - Callback fired when the delete icon is clicked. If set, the delete icon will be shown.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' The size of the component.
#' \item skipFocusWhenDisabled `bool` \cr Default is FALSE If true, allows the disabled chip to escape focus. If false, allows the disabled chip to receive focus.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'filled'| 'outlined'| string` \cr Default is 'filled' The variant to use.
#' }
#'
#' @md
#' @name Chip
NULL

#' CircularProgress
#'
#' @description \url{https://mui.com/material-ui/api/circular-progress/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'inherit'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item disableShrink `bool` \cr Default is FALSE If true, the shrink animation is disabled. This only works if variant is indeterminate.
#' \item size `number| string` \cr Default is 40 The size of the component. If using a number, the pixel unit is assumed. If using a string, you need to provide the CSS unit, for example '3rem'.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item thickness `number` \cr Default is 3.6 The thickness of the circle.
#' \item value `number` \cr Default is 0 The value of the progress indicator for the determinate variant. Value between 0 and 100.
#' \item variant `'determinate'| 'indeterminate'` \cr Default is 'indeterminate' The variant to use. Use indeterminate when there is no progress value.
#' }
#'
#' @md
#' @name CircularProgress
NULL

#' ClickAwayListener
#'
#' @description \url{https://mui.com/material-ui/api/click-away-listener/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `element` \cr Default is - The wrapped element.This needs to be able to hold a ref.
#' \item onClickAway `func` \cr Default is - Callback fired when a "click away" event is detected.
#' \item disableReactTree `bool` \cr Default is FALSE If true, the React tree is ignored and only the DOM tree is considered. This prop changes how portaled elements are handled.
#' \item mouseEvent `'onClick'| 'onMouseDown'| 'onMouseUp'| 'onPointerDown'| 'onPointerUp'| false` \cr Default is 'onClick' The mouse event to listen to. You can disable the listener by providing false.
#' \item touchEvent `'onTouchEnd'| 'onTouchStart'| false` \cr Default is 'onTouchEnd' The touch event to listen to. You can disable the listener by providing false.
#' }
#'
#' @md
#' @name ClickAwayListener
NULL

#' Collapse
#'
#' @description \url{https://mui.com/material-ui/api/collapse/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item addEndListener `func` \cr Default is - Add a custom transition end trigger. Called with the transitioning DOM node and a done callback. Allows for more fine grained transition end logic. Note: Timeouts are still used as a fallback if provided.
#' \item children `node` \cr Default is - The content node to be collapsed.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item collapsedSize `number| string` \cr Default is '0px' The width (horizontal) or height (vertical) of the container when collapsed.
#' \item component `element type` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.This needs to be able to hold a ref.
#' \item easing `{ enter?: string, exit?: string }| string` \cr Default is - The transition timing function. You may specify a single easing or a object containing enter and exit values.
#' \item in `bool` \cr Default is - If true, the component will transition in.
#' \item orientation `'horizontal'| 'vertical'` \cr Default is 'vertical' The transition orientation.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item timeout `'auto'| number| { appear?: number, enter?: number, exit?: number }` \cr Default is duration.standard The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.Set to 'auto' to automatically calculate transition time based on height.
#' }
#'
#' @md
#' @name Collapse
NULL

#' Container
#'
#' @description \url{https://mui.com/material-ui/api/container/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disableGutters `bool` \cr Default is FALSE If true, the left and right padding is removed.
#' \item fixed `bool` \cr Default is FALSE Set the max-width to match the min-width of the current breakpoint. This is useful if you'd prefer to design for a fixed set of sizes instead of trying to accommodate a fully fluid viewport. It's fluid by default.
#' \item maxWidth `'xs'| 'sm'| 'md'| 'lg'| 'xl'| false| string` \cr Default is 'lg' Determine the max-width of the container. The container width grows with the size of the screen. Set to false to disable maxWidth.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Container
NULL

#' CssBaseline
#'
#' @description \url{https://mui.com/material-ui/api/css-baseline/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - You can wrap a node.
#' \item enableColorScheme `bool` \cr Default is FALSE Enable color-scheme CSS property to use theme.palette.mode. For more details, check out https://developer.mozilla.org/en-US/docs/Web/CSS/color-scheme For browser support, check out https://caniuse.com/?search=color-scheme
#' }
#'
#' @md
#' @name CssBaseline
NULL

#' Dialog
#'
#' @description \url{https://mui.com/material-ui/api/dialog/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item aria-describedby `string` \cr Default is - The id(s) of the element(s) that describe the dialog.
#' \item aria-labelledby `string` \cr Default is - The id(s) of the element(s) that label the dialog.
#' \item aria-modal `'false'| 'true'| bool` \cr Default is TRUE Informs assistive technologies that the element is modal. It's added on the element with role="dialog".
#' \item BackdropComponent `elementType` \cr Default is styled(Backdrop,    name: 'MuiModal',   slot: 'Backdrop',   overridesResolver: (props, styles) =       return styles.backdrop;   , )(   zIndex: -1, ) A backdrop component. This prop enables custom backdrop rendering.Deprecated Use slots.backdrop instead. While this prop currently works, it will be removed in the next major version.
#' \item children `node` \cr Default is - Dialog children, usually the included sub-components.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disableEscapeKeyDown `bool` \cr Default is FALSE If true, hitting escape will not fire the onClose callback.
#' \item fullScreen `bool` \cr Default is FALSE If true, the dialog is full-screen.
#' \item fullWidth `bool` \cr Default is FALSE If true, the dialog stretches to maxWidth.Notice that the dialog width grow is limited by the default margin.
#' \item maxWidth `'xs'| 'sm'| 'md'| 'lg'| 'xl'| false| string` \cr Default is 'sm' Determine the max-width of the dialog. The dialog width grows with the size of the screen. Set to false to disable maxWidth.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed.Signature:function(event: object, reason: string) =  voidevent The event source of the callback.reason Can be: "escapeKeyDown", "backdropClick".
#' \item PaperComponent `elementType` \cr Default is Paper The component used to render the body of the dialog.
#' \item PaperProps `object` \cr Default is  Props applied to the Paper element.Deprecated Use slotProps.paper instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item scroll `'body'| 'paper'` \cr Default is 'paper' Determine the container for scrolling the dialog.
#' \item slotProps `{ backdrop?: func| object, container?: func| object, paper?: func| object, root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ backdrop?: elementType, container?: elementType, paper?: elementType, root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TransitionComponent `elementType` \cr Default is Fade The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated Use slots.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item transitionDuration `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' \item TransitionProps `object` \cr Default is - Props applied to the transition element. By default, the element is based on this Transition component.Deprecated Use slotProps.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name Dialog
NULL

#' DialogActions
#'
#' @description \url{https://mui.com/material-ui/api/dialog-actions/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disableSpacing `bool` \cr Default is FALSE If true, the actions do not have additional margin.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name DialogActions
NULL

#' DialogContent
#'
#' @description \url{https://mui.com/material-ui/api/dialog-content/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item dividers `bool` \cr Default is FALSE Display the top and bottom dividers.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name DialogContent
NULL

#' DialogContentText
#'
#' @description \url{https://mui.com/material-ui/api/dialog-content-text/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name DialogContentText
NULL

#' DialogTitle
#'
#' @description \url{https://mui.com/material-ui/api/dialog-title/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name DialogTitle
NULL

#' Divider
#'
#' @description \url{https://mui.com/material-ui/api/divider/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item absolute `bool` \cr Default is FALSE Absolutely position the element.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item flexItem `bool` \cr Default is FALSE If true, a vertical divider will have the correct height when used in flex container. (By default, a vertical divider will have a calculated height of 0px if it is the child of a flex container.)
#' \item light `bool` \cr Default is FALSE If true, the divider will have a lighter color.Deprecated Use  Divider sx= opacity: 0.6  /  (or any opacity or color) instead. See Migrating from deprecated APIs for more details.
#' \item orientation `'horizontal'| 'vertical'` \cr Default is 'horizontal' The component orientation.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item textAlign `'center'| 'left'| 'right'` \cr Default is 'center' The text alignment.
#' \item variant `'fullWidth'| 'inset'| 'middle'| string` \cr Default is 'fullWidth' The variant to use.
#' }
#'
#' @md
#' @name Divider
NULL

#' Drawer
#'
#' @description \url{https://mui.com/material-ui/api/drawer/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item anchor `'bottom'| 'left'| 'right'| 'top'` \cr Default is 'left' Side from which the drawer will appear.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item elevation `integer` \cr Default is 16 The elevation of the drawer.
#' \item hideBackdrop `bool` \cr Default is FALSE If true, the backdrop is not rendered.
#' \item ModalProps `object` \cr Default is  Props applied to the Modal element.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed. The reason parameter can optionally be used to control the response to onClose.Signature:function(event: object, reason: string) =  voidevent The event source of the callback.reason Can be: "escapeKeyDown", "backdropClick".
#' \item open `bool` \cr Default is FALSE If true, the component is shown.
#' \item PaperProps `object` \cr Default is  Props applied to the Paper element.Deprecated use the slotProps.paper prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item SlideProps `object` \cr Default is - Props applied to the Slide element.Deprecated use the slotProps.transition prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item slotProps `{ backdrop?: func| object, docked?: func| object, paper?: func| object, root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ backdrop?: elementType, docked?: elementType, paper?: elementType, root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item transitionDuration `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' \item variant `'permanent'| 'persistent'| 'temporary'` \cr Default is 'temporary' The variant to use.
#' }
#'
#' @md
#' @name Drawer
NULL

#' Fab
#'
#' @description \url{https://mui.com/material-ui/api/fab/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'default'| 'error'| 'info'| 'inherit'| 'primary'| 'secondary'| 'success'| 'warning'| string` \cr Default is 'default' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableFocusRipple `bool` \cr Default is FALSE If true, the  keyboard focus ripple is disabled.
#' \item disableRipple `bool` \cr Default is - If true, the ripple effect is disabled.
#' \item href `string` \cr Default is - The URL to link to when the button is clicked. If defined, an a element will be used as the root node.
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'large' The size of the component. small is equivalent to the dense button styling.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'circular'| 'extended'| string` \cr Default is 'circular' The variant to use.
#' }
#'
#' @md
#' @name Fab
NULL

#' Fade
#'
#' @description \url{https://mui.com/material-ui/api/fade/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `element` \cr Default is - A single child content element.This needs to be able to hold a ref.
#' \item addEndListener `func` \cr Default is - Add a custom transition end trigger. Called with the transitioning DOM node and a done callback. Allows for more fine grained transition end logic. Note: Timeouts are still used as a fallback if provided.
#' \item appear `bool` \cr Default is TRUE Perform the enter transition when it first mounts if in is also true. Set this to false to disable this behavior.
#' \item easing `{ enter?: string, exit?: string }| string` \cr Default is - The transition timing function. You may specify a single easing or a object containing enter and exit values.
#' \item in `bool` \cr Default is - If true, the component will transition in.
#' \item timeout `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' }
#'
#' @md
#' @name Fade
NULL

#' FilledInput
#'
#' @description \url{https://mui.com/material-ui/api/filled-input/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoComplete `string` \cr Default is - This prop helps users to fill forms faster, especially on mobile devices. The name can be confusing, as it's more like an autofill. You can learn more about it following the specification.
#' \item autoFocus `bool` \cr Default is - If true, the input element is focused during the first mount.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| string` \cr Default is - The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide. The prop defaults to the value ('primary') inherited from the parent FormControl component.
#' \item components `{ Input?: elementType, Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ input?: object, root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item defaultValue `any` \cr Default is - The default value. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is - If true, the component is disabled. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item disableUnderline `bool` \cr Default is FALSE If true, the input will not have an underline.
#' \item endAdornment `node` \cr Default is - End InputAdornment for this component.
#' \item error `bool` \cr Default is - If true, the input will indicate an error. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item fullWidth `bool` \cr Default is FALSE If true, the input will take up the full width of its container.
#' \item hiddenLabel `bool` \cr Default is FALSE If true, the label is hidden. This is used to increase density for a FilledInput. Be sure to add aria-label to the input element.
#' \item id `string` \cr Default is - The id of the input element.
#' \item inputComponent `elementType` \cr Default is 'input' The component used for the input element. Either a string to use a HTML element or a component.
#' \item inputProps `object` \cr Default is  Attributes applied to the input element.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.
#' \item margin `'dense'| 'none'` \cr Default is - If dense, will adjust vertical spacing. This is normally obtained via context from FormControl. The prop defaults to the value ('none') inherited from the parent FormControl component.
#' \item maxRows `number| string` \cr Default is - Maximum number of rows to display when multiline option is set to true.
#' \item minRows `number| string` \cr Default is - Minimum number of rows to display when multiline option is set to true.
#' \item multiline `bool` \cr Default is FALSE If true, a TextareaAutosize element is rendered.
#' \item name `string` \cr Default is - Name attribute of the input element.
#' \item onChange `func` \cr Default is - Callback fired when the value is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string).
#' \item placeholder `string` \cr Default is - The short hint displayed in the input before the user enters a value.
#' \item readOnly `bool` \cr Default is - It prevents the user from changing the value of the field (not from interacting with the field).
#' \item required `bool` \cr Default is - If true, the input element is required. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item rows `number| string` \cr Default is - Number of rows to display when multiline option is set to true.
#' \item slotProps `{ input?: object, root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.This prop is an alias for the componentsProps prop, which will be deprecated in the future.
#' \item slots `{ input?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.This prop is an alias for the components prop, which will be deprecated in the future.
#' \item startAdornment `node` \cr Default is - Start InputAdornment for this component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item type `string` \cr Default is 'text' Type of the input element. It should be a valid HTML5 input type.
#' \item value `any` \cr Default is - The value of the input element, required for a controlled component.
#' }
#'
#' @md
#' @name FilledInput
NULL

#' FormControl
#'
#' @description \url{https://mui.com/material-ui/api/form-control/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is FALSE If true, the label, input and helper text should be displayed in a disabled state.
#' \item error `bool` \cr Default is FALSE If true, the label is displayed in an error state.
#' \item focused `bool` \cr Default is - If true, the component is displayed in focused state.
#' \item fullWidth `bool` \cr Default is FALSE If true, the component will take up the full width of its container.
#' \item hiddenLabel `bool` \cr Default is FALSE If true, the label is hidden. This is used to increase density for a FilledInput. Be sure to add aria-label to the input element.
#' \item margin `'dense'| 'none'| 'normal'` \cr Default is 'none' If dense or normal, will adjust vertical spacing of this and contained components.
#' \item required `bool` \cr Default is FALSE If true, the label will indicate that the input is required.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' The size of the component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'filled'| 'outlined'| 'standard'` \cr Default is 'outlined' The variant to use.
#' }
#'
#' @md
#' @name FormControl
NULL

#' FormControlLabel
#'
#' @description \url{https://mui.com/material-ui/api/form-control-label/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item control `element` \cr Default is - A control element. For instance, it can be a Radio, a Switch or a Checkbox.
#' \item checked `bool` \cr Default is - If true, the component appears selected.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item componentsProps `{ typography?: object }` \cr Default is  The props used for each slot inside.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item disabled `bool` \cr Default is - If true, the control is disabled.
#' \item disableTypography `bool` \cr Default is - If true, the label is rendered as it is passed without an additional typography node.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.
#' \item label `node` \cr Default is - A text or an element to be used in an enclosing label element.
#' \item labelPlacement `'bottom'| 'end'| 'start'| 'top'` \cr Default is 'end' The position of the label.
#' \item onChange `func` \cr Default is - Callback fired when the state is changed.Signature:function(event: React.SyntheticEvent) =  voidevent The event source of the callback. You can pull out the new checked state by accessing event.target.checked (boolean).
#' \item required `bool` \cr Default is - If true, the label will indicate that the input is required.
#' \item slotProps `{ typography?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ typography?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The value of the component.
#' }
#'
#' @md
#' @name FormControlLabel
NULL

#' FormGroup
#'
#' @description \url{https://mui.com/material-ui/api/form-group/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item row `bool` \cr Default is FALSE Display group of elements in a compact row.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name FormGroup
NULL

#' FormHelperText
#'
#' @description \url{https://mui.com/material-ui/api/form-helper-text/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.If ' ' is provided, the component reserves one line height for displaying a future message.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is NA If true, the helper text should be displayed in a disabled state.
#' \item error `bool` \cr Default is NA If true, helper text should be displayed in an error state.
#' \item filled `bool` \cr Default is NA If true, the helper text should use filled classes key.
#' \item focused `bool` \cr Default is NA If true, the helper text should use focused classes key.
#' \item margin `'dense'` \cr Default is NA If dense, will adjust vertical spacing. This is normally obtained via context from FormControl.
#' \item required `bool` \cr Default is NA If true, the helper text should use required classes key.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'filled'| 'outlined'| 'standard'| string` \cr Default is NA The variant to use.
#' }
#'
#' @md
#' @name FormHelperText
NULL

#' FormLabel
#'
#' @description \url{https://mui.com/material-ui/api/form-label/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'error'| 'info'| 'primary'| 'secondary'| 'success'| 'warning'| string` \cr Default is NA The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is NA If true, the label should be displayed in a disabled state.
#' \item error `bool` \cr Default is NA If true, the label is displayed in an error state.
#' \item filled `bool` \cr Default is NA If true, the label should use filled classes key.
#' \item focused `bool` \cr Default is NA If true, the input of this label is focused (used by FormGroup components).
#' \item required `bool` \cr Default is NA If true, the label will indicate that the input is required.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name FormLabel
NULL

#' GlobalStyles
#'
#' @description \url{https://mui.com/material-ui/api/global-styles/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item styles `array| func| number| object| string| bool` \cr Default is NA The styles you want to apply globally.
#' }
#'
#' @md
#' @name GlobalStyles
NULL

#' Grid
#'
#' @description \url{https://mui.com/material-ui/api/grid/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item columns `Array number | number| object` \cr Default is 12 The number of columns.
#' \item columnSpacing `Array number| string | number| object| string` \cr Default is - Defines the horizontal space between the type item components. It overrides the value of the spacing prop.
#' \item container `bool` \cr Default is FALSE If true, the component will have the flex container behavior. You should be wrapping items with a container.
#' \item direction `'column-reverse'| 'column'| 'row-reverse'| 'row'| Array 'column-reverse'| 'column'| 'row-reverse'| 'row' | object` \cr Default is 'row' Defines the flex-direction style property. It is applied for all screen sizes.
#' \item offset `string| number| Array string| number | object` \cr Default is - Defines the offset value for the type item components.
#' \item rowSpacing `Array number| string | number| object| string` \cr Default is - Defines the vertical space between the type item components. It overrides the value of the spacing prop.
#' \item size `string| bool| number| Array string| bool| number | object` \cr Default is - Defines the size of the the type item components.
#' \item spacing `Array number| string | number| object| string` \cr Default is 0 Defines the space between the type item components. It can only be used on a type container component.
#' \item wrap `'nowrap'| 'wrap-reverse'| 'wrap'` \cr Default is 'wrap' Defines the flex-wrap style property. It's applied for all screen sizes.
#' }
#'
#' @md
#' @name Grid
NULL

#' GridLegacy
#'
#' @description \url{https://mui.com/material-ui/api/grid-legacy/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item columns `Array number | number| object` \cr Default is 12 The number of columns.
#' \item columnSpacing `Array number| string | number| object| string` \cr Default is - Defines the horizontal space between the type item components. It overrides the value of the spacing prop.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item container `bool` \cr Default is FALSE If true, the component will have the flex container behavior. You should be wrapping items with a container.
#' \item direction `'column-reverse'| 'column'| 'row-reverse'| 'row'| Array 'column-reverse'| 'column'| 'row-reverse'| 'row' | object` \cr Default is 'row' Defines the flex-direction style property. It is applied for all screen sizes.
#' \item item `bool` \cr Default is FALSE If true, the component will have the flex item behavior. You should be wrapping items with a container.
#' \item lg `'auto'| number| bool` \cr Default is FALSE If a number, it sets the number of columns the grid item uses. It can't be greater than the total number of columns of the container (12 by default). If 'auto', the grid item's width matches its content. If false, the prop is ignored. If true, the grid item's width grows to use the space available in the grid container. The value is applied for the lg breakpoint and wider screens if not overridden.
#' \item md `'auto'| number| bool` \cr Default is FALSE If a number, it sets the number of columns the grid item uses. It can't be greater than the total number of columns of the container (12 by default). If 'auto', the grid item's width matches its content. If false, the prop is ignored. If true, the grid item's width grows to use the space available in the grid container. The value is applied for the md breakpoint and wider screens if not overridden.
#' \item rowSpacing `Array number| string | number| object| string` \cr Default is - Defines the vertical space between the type item components. It overrides the value of the spacing prop.
#' \item sm `'auto'| number| bool` \cr Default is FALSE If a number, it sets the number of columns the grid item uses. It can't be greater than the total number of columns of the container (12 by default). If 'auto', the grid item's width matches its content. If false, the prop is ignored. If true, the grid item's width grows to use the space available in the grid container. The value is applied for the sm breakpoint and wider screens if not overridden.
#' \item spacing `Array number| string | number| object| string` \cr Default is 0 Defines the space between the type item components. It can only be used on a type container component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item wrap `'nowrap'| 'wrap-reverse'| 'wrap'` \cr Default is 'wrap' Defines the flex-wrap style property. It's applied for all screen sizes.
#' \item xl `'auto'| number| bool` \cr Default is FALSE If a number, it sets the number of columns the grid item uses. It can't be greater than the total number of columns of the container (12 by default). If 'auto', the grid item's width matches its content. If false, the prop is ignored. If true, the grid item's width grows to use the space available in the grid container. The value is applied for the xl breakpoint and wider screens if not overridden.
#' \item xs `'auto'| number| bool` \cr Default is FALSE If a number, it sets the number of columns the grid item uses. It can't be greater than the total number of columns of the container (12 by default). If 'auto', the grid item's width matches its content. If false, the prop is ignored. If true, the grid item's width grows to use the space available in the grid container. The value is applied for all the screen sizes with the lowest priority.
#' \item zeroMinWidth `bool` \cr Default is FALSE If true, it sets min-width: 0 on the item. Refer to the limitations section of the documentation to better understand the use case.
#' }
#'
#' @md
#' @name GridLegacy
NULL

#' Grow
#'
#' @description \url{https://mui.com/material-ui/api/grow/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `element` \cr Default is - A single child content element.This needs to be able to hold a ref.
#' \item addEndListener `func` \cr Default is - Add a custom transition end trigger. Called with the transitioning DOM node and a done callback. Allows for more fine grained transition end logic. Note: Timeouts are still used as a fallback if provided.
#' \item appear `bool` \cr Default is TRUE Perform the enter transition when it first mounts if in is also true. Set this to false to disable this behavior.
#' \item easing `{ enter?: string, exit?: string }| string` \cr Default is - The transition timing function. You may specify a single easing or a object containing enter and exit values.
#' \item in `bool` \cr Default is - If true, the component will transition in.
#' \item timeout `'auto'| number| { appear?: number, enter?: number, exit?: number }` \cr Default is 'auto' The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.Set to 'auto' to automatically calculate transition time based on height.
#' }
#'
#' @md
#' @name Grow
NULL

#' Icon
#'
#' @description \url{https://mui.com/material-ui/api/icon/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item baseClassName `string` \cr Default is 'material-icons' The base class applied to the icon. Defaults to 'material-icons', but can be changed to any other base class that suits the icon font you're using (for example material-icons-rounded, fas, etc).
#' \item children `node` \cr Default is - The name of the icon font ligature.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'inherit'| 'action'| 'disabled'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'inherit' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item fontSize `'inherit'| 'large'| 'medium'| 'small'| string` \cr Default is 'medium' The fontSize applied to the icon. Defaults to 24px, but can be configure to inherit font size.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Icon
NULL

#' IconButton
#'
#' @description \url{https://mui.com/material-ui/api/icon-button/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The icon to display.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'inherit'| 'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'default' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableFocusRipple `bool` \cr Default is FALSE If true, the  keyboard focus ripple is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled. ️ Without a ripple there is no styling for :focus-visible by default. Be sure to highlight the element by applying separate styles with the .Mui-focusVisible class.
#' \item edge `'end'| 'start'| false` \cr Default is FALSE If given, uses a negative margin to counteract the padding on one side (this is often helpful for aligning the left or right side of the icon with content above or below, without ruining the border size and shape).
#' \item loading `bool` \cr Default is null If true, the loading indicator is visible and the button is disabled. If true | false, the loading wrapper is always rendered before the children to prevent Google Translation Crash.
#' \item loadingIndicator `node` \cr Default is  CircularProgress color="inherit" size=16 /  Element placed before the children if the button is in loading state. The node should contain an element with role="progressbar" with an accessible name. By default, it renders a CircularProgress that is labeled by the button itself.
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component. small is equivalent to the dense button styling.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name IconButton
NULL

#' ImageList
#'
#' @description \url{https://mui.com/material-ui/api/image-list/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component, normally ImageListItems.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item cols `integer` \cr Default is 2 Number of columns.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item gap `number` \cr Default is 4 The gap between items in px.
#' \item rowHeight `'auto'| number` \cr Default is 'auto' The height of one row in px.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'masonry'| 'quilted'| 'standard'| 'woven'| string` \cr Default is 'standard' The variant to use.
#' }
#'
#' @md
#' @name ImageList
NULL

#' ImageListItem
#'
#' @description \url{https://mui.com/material-ui/api/image-list-item/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component, normally an  img .
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item cols `integer` \cr Default is 1 Width of the item in number of grid columns.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item rows `integer` \cr Default is 1 Height of the item in number of grid rows.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ImageListItem
NULL

#' ImageListItemBar
#'
#' @description \url{https://mui.com/material-ui/api/image-list-item-bar/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item actionIcon `node` \cr Default is - An IconButton element to be used as secondary action target (primary action target is the item itself).
#' \item actionPosition `'left'| 'right'` \cr Default is 'right' Position of secondary action IconButton.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item position `'below'| 'bottom'| 'top'` \cr Default is 'bottom' Position of the title bar.
#' \item subtitle `node` \cr Default is - String or element serving as subtitle (support text).
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item title `node` \cr Default is - Title to be displayed.
#' }
#'
#' @md
#' @name ImageListItemBar
NULL

#' Input
#'
#' @description \url{https://mui.com/material-ui/api/input/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoComplete `string` \cr Default is - This prop helps users to fill forms faster, especially on mobile devices. The name can be confusing, as it's more like an autofill. You can learn more about it following the specification.
#' \item autoFocus `bool` \cr Default is - If true, the input element is focused during the first mount.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| string` \cr Default is - The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide. The prop defaults to the value ('primary') inherited from the parent FormControl component.
#' \item components `{ Input?: elementType, Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ input?: object, root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item defaultValue `any` \cr Default is - The default value. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is - If true, the component is disabled. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item disableUnderline `bool` \cr Default is FALSE If true, the input will not have an underline.
#' \item endAdornment `node` \cr Default is - End InputAdornment for this component.
#' \item error `bool` \cr Default is - If true, the input will indicate an error. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item fullWidth `bool` \cr Default is FALSE If true, the input will take up the full width of its container.
#' \item id `string` \cr Default is - The id of the input element.
#' \item inputComponent `elementType` \cr Default is 'input' The component used for the input element. Either a string to use a HTML element or a component.
#' \item inputProps `object` \cr Default is  Attributes applied to the input element.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.
#' \item margin `'dense'| 'none'` \cr Default is - If dense, will adjust vertical spacing. This is normally obtained via context from FormControl. The prop defaults to the value ('none') inherited from the parent FormControl component.
#' \item maxRows `number| string` \cr Default is - Maximum number of rows to display when multiline option is set to true.
#' \item minRows `number| string` \cr Default is - Minimum number of rows to display when multiline option is set to true.
#' \item multiline `bool` \cr Default is FALSE If true, a TextareaAutosize element is rendered.
#' \item name `string` \cr Default is - Name attribute of the input element.
#' \item onChange `func` \cr Default is - Callback fired when the value is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string).
#' \item placeholder `string` \cr Default is - The short hint displayed in the input before the user enters a value.
#' \item readOnly `bool` \cr Default is - It prevents the user from changing the value of the field (not from interacting with the field).
#' \item required `bool` \cr Default is - If true, the input element is required. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item rows `number| string` \cr Default is - Number of rows to display when multiline option is set to true.
#' \item slotProps `{ input?: object, root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.This prop is an alias for the componentsProps prop, which will be deprecated in the future.
#' \item slots `{ input?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.This prop is an alias for the components prop, which will be deprecated in the future.
#' \item startAdornment `node` \cr Default is - Start InputAdornment for this component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item type `string` \cr Default is 'text' Type of the input element. It should be a valid HTML5 input type.
#' \item value `any` \cr Default is - The value of the input element, required for a controlled component.
#' }
#'
#' @md
#' @name Input
NULL

#' InputAdornment
#'
#' @description \url{https://mui.com/material-ui/api/input-adornment/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item position `'end'| 'start'` \cr Default is - The position this adornment should appear relative to the Input.
#' \item children `node` \cr Default is - The content of the component, normally an IconButton or string.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disablePointerEvents `bool` \cr Default is FALSE Disable pointer events on the root. This allows for the content of the adornment to focus the input on click.
#' \item disableTypography `bool` \cr Default is FALSE If children is a string then disable wrapping in a Typography component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'filled'| 'outlined'| 'standard'` \cr Default is - The variant to use. Note: If you are using the TextField component or the FormControl component you do not have to set this manually.
#' }
#'
#' @md
#' @name InputAdornment
NULL

#' InputBase
#'
#' @description \url{https://mui.com/material-ui/api/input-base/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoComplete `string` \cr Default is - This prop helps users to fill forms faster, especially on mobile devices. The name can be confusing, as it's more like an autofill. You can learn more about it following the specification.
#' \item autoFocus `bool` \cr Default is - If true, the input element is focused during the first mount.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is - The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide. The prop defaults to the value ('primary') inherited from the parent FormControl component.
#' \item components `{ Input?: elementType, Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ input?: object, root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item defaultValue `any` \cr Default is - The default value. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is - If true, the component is disabled. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item disableInjectingGlobalStyles `bool` \cr Default is FALSE If true, GlobalStyles for the auto-fill keyframes will not be injected/removed on mount/unmount. Make sure to inject them at the top of your application. This option is intended to help with boosting the initial rendering performance if you are loading a big amount of Input components at once.
#' \item endAdornment `node` \cr Default is - End InputAdornment for this component.
#' \item error `bool` \cr Default is - If true, the input will indicate an error. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item fullWidth `bool` \cr Default is FALSE If true, the input will take up the full width of its container.
#' \item id `string` \cr Default is - The id of the input element.
#' \item inputComponent `element type` \cr Default is 'input' The component used for the input element. Either a string to use a HTML element or a component.This needs to be able to hold a ref.
#' \item inputProps `object` \cr Default is  Attributes applied to the input element.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.
#' \item margin `'dense'| 'none'` \cr Default is - If dense, will adjust vertical spacing. This is normally obtained via context from FormControl. The prop defaults to the value ('none') inherited from the parent FormControl component.
#' \item maxRows `number| string` \cr Default is - Maximum number of rows to display when multiline option is set to true.
#' \item minRows `number| string` \cr Default is - Minimum number of rows to display when multiline option is set to true.
#' \item multiline `bool` \cr Default is FALSE If true, a TextareaAutosize element is rendered.
#' \item name `string` \cr Default is - Name attribute of the input element.
#' \item onBlur `func` \cr Default is - Callback fired when the input is blurred.Notice that the first argument (event) might be undefined.
#' \item onChange `func` \cr Default is - Callback fired when the value is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string).
#' \item onInvalid `func` \cr Default is - Callback fired when the input doesn't satisfy its constraints.
#' \item placeholder `string` \cr Default is - The short hint displayed in the input before the user enters a value.
#' \item readOnly `bool` \cr Default is - It prevents the user from changing the value of the field (not from interacting with the field).
#' \item required `bool` \cr Default is - If true, the input element is required. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item rows `number| string` \cr Default is - Number of rows to display when multiline option is set to true.
#' \item size `'medium'| 'small'| string` \cr Default is - The size of the component.
#' \item slotProps `{ input?: object, root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.This prop is an alias for the componentsProps prop, which will be deprecated in the future.
#' \item slots `{ input?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.This prop is an alias for the components prop, which will be deprecated in the future.
#' \item startAdornment `node` \cr Default is - Start InputAdornment for this component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item type `string` \cr Default is 'text' Type of the input element. It should be a valid HTML5 input type.
#' \item value `any` \cr Default is - The value of the input element, required for a controlled component.
#' }
#'
#' @md
#' @name InputBase
NULL

#' InputLabel
#'
#' @description \url{https://mui.com/material-ui/api/input-label/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'error'| 'info'| 'primary'| 'secondary'| 'success'| 'warning'| string` \cr Default is - The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item disableAnimation `bool` \cr Default is FALSE If true, the transition animation is disabled.
#' \item disabled `bool` \cr Default is - If true, the component is disabled.
#' \item error `bool` \cr Default is - If true, the label is displayed in an error state.
#' \item focused `bool` \cr Default is - If true, the input of this label is focused.
#' \item margin `'dense'` \cr Default is - If dense, will adjust vertical spacing. This is normally obtained via context from FormControl.
#' \item required `bool` \cr Default is - if true, the label will indicate that the input is required.
#' \item shrink `bool` \cr Default is - If true, the label is shrunk.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' The size of the component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'filled'| 'outlined'| 'standard'` \cr Default is - The variant to use.
#' }
#'
#' @md
#' @name InputLabel
NULL

#' LinearProgress
#'
#' @description \url{https://mui.com/material-ui/api/linear-progress/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'inherit'| 'primary'| 'secondary'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `number` \cr Default is - The value of the progress indicator for the determinate and buffer variants. Value between 0 and 100.
#' \item valueBuffer `number` \cr Default is - The value for the buffer variant. Value between 0 and 100.
#' \item variant `'buffer'| 'determinate'| 'indeterminate'| 'query'` \cr Default is 'indeterminate' The variant to use. Use indeterminate or query when there is no progress value.
#' }
#'
#' @md
#' @name LinearProgress
NULL

#' Link
#'
#' @description \url{https://mui.com/material-ui/api/link/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'success'| 'error'| 'info'| 'warning'| 'textPrimary'| 'textSecondary'| 'textDisabled'| string` \cr Default is 'primary' The color of the link.
#' \item component `element type` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.This needs to be able to hold a ref.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TypographyClasses `object` \cr Default is - classes prop applied to the Typography element.
#' \item underline `'always'| 'hover'| 'none'` \cr Default is 'always' Controls when the link should have an underline.
#' \item variant `'body1'| 'body2'| 'button'| 'caption'| 'h1'| 'h2'| 'h3'| 'h4'| 'h5'| 'h6'| 'inherit'| 'overline'| 'subtitle1'| 'subtitle2'| string` \cr Default is 'inherit' Applies the theme typography styles.
#' }
#'
#' @md
#' @name Link
NULL

#' List
#'
#' @description \url{https://mui.com/material-ui/api/list/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item dense `bool` \cr Default is FALSE If true, compact vertical padding designed for keyboard and mouse input is used for the list and list items. The prop is available to descendant components as the dense context.
#' \item disablePadding `bool` \cr Default is FALSE If true, vertical padding is removed from the list.
#' \item subheader `node` \cr Default is - The content of the subheader, normally ListSubheader.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name List
NULL

#' ListItem
#'
#' @description \url{https://mui.com/material-ui/api/list-item/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item alignItems `'center'| 'flex-start'` \cr Default is 'center' Defines the align-items style property.
#' \item children `node` \cr Default is - The content of the component if a ListItemSecondaryAction is used it must be the last child.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item components `{ Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated Use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated Use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item ContainerComponent `element type` \cr Default is 'li' The container component used when a ListItemSecondaryAction is the last child.This needs to be able to hold a ref.Deprecated Use the component or slots.root prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item ContainerProps `object` \cr Default is  Props applied to the container component if used.Deprecated Use the slotProps.root prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item dense `bool` \cr Default is FALSE If true, compact vertical padding designed for keyboard and mouse input is used. The prop defaults to the value inherited from the parent List component.
#' \item disableGutters `bool` \cr Default is FALSE If true, the left and right padding is removed.
#' \item disablePadding `bool` \cr Default is FALSE If true, all padding is removed.
#' \item divider `bool` \cr Default is FALSE If true, a 1px light border is added to the bottom of the list item.
#' \item secondaryAction `node` \cr Default is - The element to display at the end of ListItem.
#' \item slotProps `{ root?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.
#' \item slots `{ root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ListItem
NULL

#' ListItemAvatar
#'
#' @description \url{https://mui.com/material-ui/api/list-item-avatar/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component, normally an Avatar.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ListItemAvatar
NULL

#' ListItemButton
#'
#' @description \url{https://mui.com/material-ui/api/list-item-button/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item alignItems `'center'| 'flex-start'` \cr Default is 'center' Defines the align-items style property.
#' \item autoFocus `bool` \cr Default is FALSE If true, the list item is focused during the first mount. Focus will also be triggered if the value changes from false to true.
#' \item children `node` \cr Default is - The content of the component if a ListItemSecondaryAction is used it must be the last child.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item dense `bool` \cr Default is FALSE If true, compact vertical padding designed for keyboard and mouse input is used. The prop defaults to the value inherited from the parent List component.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableGutters `bool` \cr Default is FALSE If true, the left and right padding is removed.
#' \item divider `bool` \cr Default is FALSE If true, a 1px light border is added to the bottom of the list item.
#' \item focusVisibleClassName `string` \cr Default is - This prop can help identify which element has keyboard focus. The class name will be applied when the element gains the focus through keyboard interaction. It's a polyfill for the CSS :focus-visible selector. The rationale for using this feature is explained here. A polyfill can be used to apply a focus-visible class to other components if needed.
#' \item selected `bool` \cr Default is FALSE Use to apply selected styling.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ListItemButton
NULL

#' ListItemIcon
#'
#' @description \url{https://mui.com/material-ui/api/list-item-icon/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component, normally Icon, SvgIcon, or a @mui/icons-material SVG icon element.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ListItemIcon
NULL

#' ListItemSecondaryAction
#'
#' @description \url{https://mui.com/material-ui/api/list-item-secondary-action/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component, normally an IconButton or selection control.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ListItemSecondaryAction
NULL

#' ListItemText
#'
#' @description \url{https://mui.com/material-ui/api/list-item-text/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - Alias for the primary prop.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disableTypography `bool` \cr Default is FALSE If true, the children won't be wrapped by a Typography component. This can be useful to render an alternative Typography variant by wrapping the children (or primary) text, and optional secondary text with the Typography component.
#' \item inset `bool` \cr Default is FALSE If true, the children are indented. This should be used if there is no left avatar or left icon.
#' \item primary `node` \cr Default is - The main content element.
#' \item primaryTypographyProps `object` \cr Default is - These props will be forwarded to the primary typography component (as long as disableTypography is not true).Deprecated Use slotProps.primary instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item secondary `node` \cr Default is - The secondary content element.
#' \item secondaryTypographyProps `object` \cr Default is - These props will be forwarded to the secondary typography component (as long as disableTypography is not true).Deprecated Use slotProps.secondary instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item slotProps `{ primary?: func| object, root?: func| object, secondary?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ primary?: elementType, root?: elementType, secondary?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ListItemText
NULL

#' ListSubheader
#'
#' @description \url{https://mui.com/material-ui/api/list-subheader/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'default'| 'inherit'| 'primary'` \cr Default is 'default' The color of the component. It supports those theme colors that make sense for this component.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disableGutters `bool` \cr Default is FALSE If true, the List Subheader will not have gutters.
#' \item disableSticky `bool` \cr Default is FALSE If true, the List Subheader will not stick to the top during scroll.
#' \item inset `bool` \cr Default is FALSE If true, the List Subheader is indented.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ListSubheader
NULL

#' Masonry
#'
#' @description \url{https://mui.com/material-ui/api/masonry/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item columns `Array number| string | number| object| string` \cr Default is 4 Number of columns.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item defaultColumns `number` \cr Default is - The default number of columns of the component. This is provided for server-side rendering.
#' \item defaultHeight `number` \cr Default is - The default height of the component in px. This is provided for server-side rendering.
#' \item defaultSpacing `number` \cr Default is - The default spacing of the component. Like spacing, it is a factor of the theme's spacing. This is provided for server-side rendering.
#' \item sequential `bool` \cr Default is FALSE Allows using sequential order rather than adding to shortest column
#' \item spacing `Array number| string | number| object| string` \cr Default is 1 Defines the space between children. It is a factor of the theme's spacing.
#' \item sx `Array func| object| bool | func| object` \cr Default is - Allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Masonry
NULL

#' Menu
#'
#' @description \url{https://mui.com/material-ui/api/menu/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item anchorEl `HTML element| func` \cr Default is - An HTML element, or a function that returns one. It's used to set the position of the menu.
#' \item autoFocus `bool` \cr Default is TRUE If true (Default) will focus the role="menu" if no focusable child is found. Disabled children are not focusable. If you set this prop to false focus will be placed on the parent modal container. This has severe accessibility implications and should only be considered if you manage focus otherwise.
#' \item children `node` \cr Default is - Menu contents, normally MenuItems.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disableAutoFocusItem `bool` \cr Default is FALSE When opening the menu will not focus the active item but the role="menu" unless autoFocus is also set to false. Not using the default means not following WAI-ARIA authoring practices. Please be considerate about possible accessibility implications.
#' \item MenuListProps `object` \cr Default is  Props applied to the MenuList element.Deprecated use the slotProps.list prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed.Signature:function(event: object, reason: string) =  voidevent The event source of the callback.reason Can be: "escapeKeyDown", "backdropClick", "tabKeyDown".
#' \item PopoverClasses `object` \cr Default is - classes prop applied to the Popover element.
#' \item slotProps `{ backdrop?: func| object, list?: func| object, paper?: func| object, root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ backdrop?: elementType, list?: elementType, paper?: elementType, root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item transitionDuration `'auto'| number| { appear?: number, enter?: number, exit?: number }` \cr Default is 'auto' The length of the transition in ms, or 'auto'
#' \item TransitionProps `object` \cr Default is  Props applied to the transition element. By default, the element is based on this Transition component.Deprecated use the slotProps.transition prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item variant `'menu'| 'selectedMenu'` \cr Default is 'selectedMenu' The variant to use. Use menu to prevent selected items from impacting the initial focus.
#' }
#'
#' @md
#' @name Menu
NULL

#' MenuItem
#'
#' @description \url{https://mui.com/material-ui/api/menu-item/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoFocus `bool` \cr Default is FALSE If true, the list item is focused during the first mount. Focus will also be triggered if the value changes from false to true.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item dense `bool` \cr Default is FALSE If true, compact vertical padding designed for keyboard and mouse input is used. The prop defaults to the value inherited from the parent Menu component.
#' \item disableGutters `bool` \cr Default is FALSE If true, the left and right padding is removed.
#' \item divider `bool` \cr Default is FALSE If true, a 1px light border is added to the bottom of the menu item.
#' \item focusVisibleClassName `string` \cr Default is - This prop can help identify which element has keyboard focus. The class name will be applied when the element gains the focus through keyboard interaction. It's a polyfill for the CSS :focus-visible selector. The rationale for using this feature is explained here. A polyfill can be used to apply a focus-visible class to other components if needed.
#' \item selected `bool` \cr Default is FALSE If true, the component is selected.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name MenuItem
NULL

#' MenuList
#'
#' @description \url{https://mui.com/material-ui/api/menu-list/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoFocus `bool` \cr Default is FALSE If true, will focus the role="menu" container and move into tab order.
#' \item autoFocusItem `bool` \cr Default is FALSE If true, will focus the first menuitem if variant="menu" or selected item if variant="selectedMenu".
#' \item children `node` \cr Default is - MenuList contents, normally MenuItems.
#' \item disabledItemsFocusable `bool` \cr Default is FALSE If true, will allow focus on disabled items.
#' \item disableListWrap `bool` \cr Default is FALSE If true, the menu items will not wrap focus.
#' \item variant `'menu'| 'selectedMenu'` \cr Default is 'selectedMenu' The variant to use. Use menu to prevent selected items from impacting the initial focus and the vertical alignment relative to the anchor element.
#' }
#'
#' @md
#' @name MenuList
NULL

#' MobileStepper
#'
#' @description \url{https://mui.com/material-ui/api/mobile-stepper/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item steps `integer` \cr Default is - The total steps.
#' \item activeStep `integer` \cr Default is 0 Set the active step (zero based index). Defines which dot is highlighted when the variant is 'dots'.
#' \item backButton `node` \cr Default is - A back button element. For instance, it can be a Button or an IconButton.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item LinearProgressProps `object` \cr Default is - Props applied to the LinearProgress element.Deprecated Use slotProps.progress instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item nextButton `node` \cr Default is - A next button element. For instance, it can be a Button or an IconButton.
#' \item position `'bottom'| 'static'| 'top'` \cr Default is 'bottom' Set the positioning type.
#' \item slotProps `{ dot?: func| object, dots?: func| object, progress?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ dot?: elementType, dots?: elementType, progress?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'dots'| 'progress'| 'text'` \cr Default is 'dots' The variant to use.
#' }
#'
#' @md
#' @name MobileStepper
NULL

#' Modal
#'
#' @description \url{https://mui.com/material-ui/api/modal/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `element` \cr Default is - A single child content element.This needs to be able to hold a ref.
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item BackdropComponent `elementType` \cr Default is styled(Backdrop,    name: 'MuiModal',   slot: 'Backdrop',   overridesResolver: (props, styles) =       return styles.backdrop;   , )(   zIndex: -1, ) A backdrop component. This prop enables custom backdrop rendering.Deprecated Use slots.backdrop instead. While this prop currently works, it will be removed in the next major version.
#' \item BackdropProps `object` \cr Default is - Props applied to the Backdrop element.Deprecated Use slotProps.backdrop instead.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item closeAfterTransition `bool` \cr Default is FALSE When set to true the Modal waits until a nested Transition is completed before closing.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item components `{ Backdrop?: elementType, Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated Use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ backdrop?: func| object, root?: func| object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated Use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item container `HTML element| func` \cr Default is - An HTML element or function that returns one. The container will have the portal children appended to it.You can also provide a callback, which is called in a React layout effect. This lets you set the container from a ref, and also makes server-side rendering possible.By default, it uses the body of the top-level document object, so it's simply document.body most of the time.
#' \item disableAutoFocus `bool` \cr Default is FALSE If true, the modal will not automatically shift focus to itself when it opens, and replace it to the last focused element when it closes. This also works correctly with any modal children that have the disableAutoFocus prop.Generally this should never be set to true as it makes the modal less accessible to assistive technologies, like screen readers.
#' \item disableEnforceFocus `bool` \cr Default is FALSE If true, the modal will not prevent focus from leaving the modal while open.Generally this should never be set to true as it makes the modal less accessible to assistive technologies, like screen readers.
#' \item disableEscapeKeyDown `bool` \cr Default is FALSE If true, hitting escape will not fire the onClose callback.
#' \item disablePortal `bool` \cr Default is FALSE The children will be under the DOM hierarchy of the parent component.
#' \item disableRestoreFocus `bool` \cr Default is FALSE If true, the modal will not restore focus to previously focused element once modal is hidden or unmounted.
#' \item disableScrollLock `bool` \cr Default is FALSE Disable the scroll lock behavior.
#' \item hideBackdrop `bool` \cr Default is FALSE If true, the backdrop is not rendered.
#' \item keepMounted `bool` \cr Default is FALSE Always keep the children in the DOM. This prop can be useful in SEO situation or when you want to maximize the responsiveness of the Modal.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed. The reason parameter can optionally be used to control the response to onClose.Signature:function(event: object, reason: string) =  voidevent The event source of the callback.reason Can be: "escapeKeyDown", "backdropClick".
#' \item onTransitionEnter `func` \cr Default is - A function called when a transition enters.
#' \item onTransitionExited `func` \cr Default is - A function called when a transition has exited.
#' \item slotProps `{ backdrop?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside the Modal.
#' \item slots `{ backdrop?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside the Modal. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Modal
NULL

#' NativeSelect
#'
#' @description \url{https://mui.com/material-ui/api/native-select/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The option elements to populate the select with. Can be some  option  elements.
#' \item classes `object` \cr Default is  Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item IconComponent `elementType` \cr Default is ArrowDropDownIcon The icon that displays the arrow.
#' \item input `element` \cr Default is  Input /  An Input element; does not have to be a material-ui specific Input.
#' \item inputProps `object` \cr Default is - Attributes applied to the select element.
#' \item onChange `func` \cr Default is - Callback fired when a menu item is selected.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string).
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The input value. The DOM API casts this to a string.
#' \item variant `'filled'| 'outlined'| 'standard'` \cr Default is - The variant to use.
#' }
#'
#' @md
#' @name NativeSelect
NULL

#' NoSsr
#'
#' @description \url{https://mui.com/material-ui/api/no-ssr/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - You can wrap a node.
#' \item defer `bool` \cr Default is FALSE If true, the component will not only prevent server-side rendering. It will also defer the rendering of the children into a different screen frame.
#' \item fallback `node` \cr Default is null The fallback content to display.
#' }
#'
#' @md
#' @name NoSsr
NULL

#' OutlinedInput
#'
#' @description \url{https://mui.com/material-ui/api/outlined-input/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoComplete `string` \cr Default is - This prop helps users to fill forms faster, especially on mobile devices. The name can be confusing, as it's more like an autofill. You can learn more about it following the specification.
#' \item autoFocus `bool` \cr Default is - If true, the input element is focused during the first mount.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| string` \cr Default is - The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide. The prop defaults to the value ('primary') inherited from the parent FormControl component.
#' \item components `{ Input?: elementType, Root?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item defaultValue `any` \cr Default is - The default value. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is - If true, the component is disabled. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item endAdornment `node` \cr Default is - End InputAdornment for this component.
#' \item error `bool` \cr Default is - If true, the input will indicate an error. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item fullWidth `bool` \cr Default is FALSE If true, the input will take up the full width of its container.
#' \item id `string` \cr Default is - The id of the input element.
#' \item inputComponent `elementType` \cr Default is 'input' The component used for the input element. Either a string to use a HTML element or a component.
#' \item inputProps `object` \cr Default is  Attributes applied to the input element.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.
#' \item label `node` \cr Default is - The label of the input. It is only used for layout. The actual labelling is handled by InputLabel.
#' \item margin `'dense'| 'none'` \cr Default is - If dense, will adjust vertical spacing. This is normally obtained via context from FormControl. The prop defaults to the value ('none') inherited from the parent FormControl component.
#' \item maxRows `number| string` \cr Default is - Maximum number of rows to display when multiline option is set to true.
#' \item minRows `number| string` \cr Default is - Minimum number of rows to display when multiline option is set to true.
#' \item multiline `bool` \cr Default is FALSE If true, a TextareaAutosize element is rendered.
#' \item name `string` \cr Default is - Name attribute of the input element.
#' \item notched `bool` \cr Default is - If true, the outline is notched to accommodate the label.
#' \item onChange `func` \cr Default is - Callback fired when the value is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string).
#' \item placeholder `string` \cr Default is - The short hint displayed in the input before the user enters a value.
#' \item readOnly `bool` \cr Default is - It prevents the user from changing the value of the field (not from interacting with the field).
#' \item required `bool` \cr Default is - If true, the input element is required. The prop defaults to the value (false) inherited from the parent FormControl component.
#' \item rows `number| string` \cr Default is - Number of rows to display when multiline option is set to true.
#' \item slots `{ input?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.This prop is an alias for the components prop, which will be deprecated in the future.
#' \item startAdornment `node` \cr Default is - Start InputAdornment for this component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item type `string` \cr Default is 'text' Type of the input element. It should be a valid HTML5 input type.
#' \item value `any` \cr Default is - The value of the input element, required for a controlled component.
#' }
#'
#' @md
#' @name OutlinedInput
NULL

#' Pagination
#'
#' @description \url{https://mui.com/material-ui/api/pagination/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item boundaryCount `integer` \cr Default is 1 Number of always visible pages at the beginning and end.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'standard'| string` \cr Default is 'standard' The active color. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item count `integer` \cr Default is 1 The total number of pages.
#' \item defaultPage `integer` \cr Default is 1 The page selected by default when the component is uncontrolled.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item getItemAriaLabel `func` \cr Default is - Accepts a function which returns a string value that provides a user-friendly name for the current page. This is important for screen reader users.For localization purposes, you can use the provided translations.Signature:function(type: string, page: number | null, selected: boolean) =  stringtype The link or button type to format ('page' | 'first' | 'last' | 'next' | 'previous' | 'start-ellipsis' | 'end-ellipsis'). Defaults to 'page'.page The page number to format.selected If true, the current page is selected.
#' \item hideNextButton `bool` \cr Default is FALSE If true, hide the next-page button.
#' \item hidePrevButton `bool` \cr Default is FALSE If true, hide the previous-page button.
#' \item onChange `func` \cr Default is - Callback fired when the page is changed.Signature:function(event: React.ChangeEvent, page: number) =  voidevent The event source of the callback.page The page selected.
#' \item page `integer` \cr Default is - The current page. Unlike TablePagination, which starts numbering from 0, this pagination starts from 1.
#' \item renderItem `func` \cr Default is (item) =   PaginationItem ...item /  Render the item.Signature:function(params: PaginationRenderItemParams) =  ReactNodeparams The props to spread on a PaginationItem.
#' \item shape `'circular'| 'rounded'` \cr Default is 'circular' The shape of the pagination items.
#' \item showFirstButton `bool` \cr Default is FALSE If true, show the first-page button.
#' \item showLastButton `bool` \cr Default is FALSE If true, show the last-page button.
#' \item siblingCount `integer` \cr Default is 1 Number of always visible pages before and after the current page.
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'outlined'| 'text'| string` \cr Default is 'text' The variant to use.
#' }
#'
#' @md
#' @name Pagination
NULL

#' PaginationItem
#'
#' @description \url{https://mui.com/material-ui/api/pagination-item/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'standard'| string` \cr Default is 'standard' The active color. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item components `{ first?: elementType, last?: elementType, next?: elementType, previous?: elementType }` \cr Default is  The components used for each slot inside.This prop is an alias for the slots prop. It's recommended to use the slots prop instead.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item page `node` \cr Default is - The current page number.
#' \item selected `bool` \cr Default is FALSE If true the pagination item is selected.
#' \item shape `'circular'| 'rounded'` \cr Default is 'circular' The shape of the pagination item.
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component.
#' \item slotProps `{ first?: func| object, last?: func| object, next?: func| object, previous?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ first?: elementType, last?: elementType, next?: elementType, previous?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item type `'end-ellipsis'| 'first'| 'last'| 'next'| 'page'| 'previous'| 'start-ellipsis'` \cr Default is 'page' The type of pagination item.
#' \item variant `'outlined'| 'text'| string` \cr Default is 'text' The variant to use.
#' }
#'
#' @md
#' @name PaginationItem
NULL

#' Paper
#'
#' @description \url{https://mui.com/material-ui/api/paper/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item elevation `integer` \cr Default is 1 Shadow depth, corresponds to dp in the spec. It accepts values between 0 and 24 inclusive.
#' \item square `bool` \cr Default is FALSE If true, rounded corners are disabled.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'elevation'| 'outlined'| string` \cr Default is 'elevation' The variant to use.
#' }
#'
#' @md
#' @name Paper
NULL

#' PigmentContainer
#'
#' @description \url{https://mui.com/material-ui/api/pigment-container/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disableGutters `bool` \cr Default is FALSE If true, the left and right padding is removed.
#' \item fixed `bool` \cr Default is FALSE Set the max-width to match the min-width of the current breakpoint. This is useful if you'd prefer to design for a fixed set of sizes instead of trying to accommodate a fully fluid viewport. It's fluid by default.
#' \item maxWidth `'lg'| 'md'| 'sm'| 'xl'| 'xs'| false` \cr Default is 'lg' Determine the max-width of the container. The container width grows with the size of the screen. Set to false to disable maxWidth.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name PigmentContainer
NULL

#' PigmentGrid
#'
#' @description \url{https://mui.com/material-ui/api/pigment-grid/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item columns `Array number | number| object` \cr Default is 12 The number of columns.
#' \item columnSpacing `Array number| string | number| object| string` \cr Default is - Defines the horizontal space between the type item components. It overrides the value of the spacing prop.
#' \item container `bool` \cr Default is FALSE If true, the component will have the flex container behavior. You should be wrapping items with a container.
#' \item direction `'column'| 'column-reverse'| 'row'| 'row-reverse'| Array 'column'| 'column-reverse'| 'row'| 'row-reverse' | object` \cr Default is 'row' Defines the flex-direction style property. It is applied for all screen sizes.
#' \item offset `Array number | number| object` \cr Default is - Defines the offset of the grid.
#' \item rowSpacing `Array number| string | number| object| string` \cr Default is - Defines the vertical space between the type item components. It overrides the value of the spacing prop.
#' \item size `Array number | number| object` \cr Default is - Defines the column size of the grid.
#' \item spacing `Array number| string | number| object| string` \cr Default is 0 Defines the space between the type item components. It can only be used on a type container component.
#' \item wrap `'nowrap'| 'wrap-reverse'| 'wrap'` \cr Default is 'wrap' Defines the flex-wrap style property. It's applied for all screen sizes.
#' }
#'
#' @md
#' @name PigmentGrid
NULL

#' PigmentStack
#'
#' @description \url{https://mui.com/material-ui/api/pigment-stack/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item direction `'column-reverse'| 'column'| 'row-reverse'| 'row'| Array 'column-reverse'| 'column'| 'row-reverse'| 'row' | { lg?: 'column-reverse'| 'column'| 'row-reverse'| 'row', md?: 'column-reverse'| 'column'| 'row-reverse'| 'row', sm?: 'column-reverse'| 'column'| 'row-reverse'| 'row', xl?: 'column-reverse'| 'column'| 'row-reverse'| 'row', xs?: 'column-reverse'| 'column'| 'row-reverse'| 'row' }` \cr Default is 'column' Defines the flex-direction style property. It is applied for all screen sizes.
#' \item divider `node` \cr Default is - Add an element between each child.
#' \item spacing `Array number| string | number| { lg?: number| string, md?: number| string, sm?: number| string, xl?: number| string, xs?: number| string }| string` \cr Default is 0 Defines the space between immediate children.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop, which allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name PigmentStack
NULL

#' Popover
#'
#' @description \url{https://mui.com/material-ui/api/popover/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item action `ref` \cr Default is - A ref for imperative actions. It currently only supports updatePosition() action.
#' \item anchorEl `HTML element| func` \cr Default is - An HTML element, PopoverVirtualElement, or a function that returns either. It's used to set the position of the popover.
#' \item anchorOrigin `{ horizontal: 'center'| 'left'| 'right'| number, vertical: 'bottom'| 'center'| 'top'| number }` \cr Default is    vertical: 'top',   horizontal: 'left',  This is the point on the anchor where the popover's anchorEl will attach to. This is not used when the anchorReference is 'anchorPosition'.Options: vertical: top, center, bottom; horizontal: left, center, right.
#' \item anchorPosition `{ left: number, top: number }` \cr Default is - This is the position that may be used to set the position of the popover. The coordinates are relative to the application's client area.
#' \item anchorReference `'anchorEl'| 'anchorPosition'| 'none'` \cr Default is 'anchorEl' This determines which anchor prop to refer to when setting the position of the popover.
#' \item BackdropComponent `elementType` \cr Default is styled(Backdrop,    name: 'MuiModal',   slot: 'Backdrop',   overridesResolver: (props, styles) =       return styles.backdrop;   , )(   zIndex: -1, ) A backdrop component. This prop enables custom backdrop rendering.Deprecated Use slots.backdrop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item BackdropProps `object` \cr Default is - Props applied to the Backdrop element.Deprecated Use slotProps.backdrop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item container `HTML element| func` \cr Default is - An HTML element, component instance, or function that returns either. The container will passed to the Modal component.By default, it uses the body of the anchorEl's top-level document object, so it's simply document.body most of the time.
#' \item disableScrollLock `bool` \cr Default is FALSE Disable the scroll lock behavior.
#' \item elevation `integer` \cr Default is 8 The elevation of the popover.
#' \item marginThreshold `number` \cr Default is 16 Specifies how close to the edge of the window the popover can appear. If null, the popover will not be constrained by the window.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed. The reason parameter can optionally be used to control the response to onClose.
#' \item PaperProps `{ component?: element type }` \cr Default is  Props applied to the Paper element.This prop is an alias for slotProps.paper and will be overriden by it if both are used.Deprecated Use slotProps.paper instead.
#' \item slotProps `{ backdrop?: func| object, paper?: func| object, root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ backdrop?: elementType, paper?: elementType, root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item transformOrigin `{ horizontal: 'center'| 'left'| 'right'| number, vertical: 'bottom'| 'center'| 'top'| number }` \cr Default is    vertical: 'top',   horizontal: 'left',  This is the point on the popover which will attach to the anchor's origin.Options: vertical: top, center, bottom, x(px); horizontal: left, center, right, x(px).
#' \item TransitionComponent `elementType` \cr Default is Grow The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated use the slots.transition prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item transitionDuration `'auto'| number| { appear?: number, enter?: number, exit?: number }` \cr Default is 'auto' Set to 'auto' to automatically calculate transition time based on height.
#' \item TransitionProps `object` \cr Default is  Props applied to the transition element. By default, the element is based on this Transition component.Deprecated use the slotProps.transition prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name Popover
NULL

#' Popper
#'
#' @description \url{https://mui.com/material-ui/api/popper/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item anchorEl `HTML element| object| func` \cr Default is - An HTML element, virtualElement, or a function that returns either. It's used to set the position of the popper. The return value will passed as the reference object of the Popper instance.
#' \item children `node| func` \cr Default is - Popper render function or node.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item components `{ Root?: elementType }` \cr Default is  The components used for each slot inside the Popper. Either a string to use a HTML element or a component.Deprecated use the slots prop instead. This prop will be removed in a future major release. How to migrate.
#' \item componentsProps `{ root?: func| object }` \cr Default is  The props used for each slot inside the Popper.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. How to migrate.
#' \item container `HTML element| func` \cr Default is - An HTML element or function that returns one. The container will have the portal children appended to it.You can also provide a callback, which is called in a React layout effect. This lets you set the container from a ref, and also makes server-side rendering possible.By default, it uses the body of the top-level document object, so it's simply document.body most of the time.
#' \item disablePortal `bool` \cr Default is FALSE The children will be under the DOM hierarchy of the parent component.
#' \item keepMounted `bool` \cr Default is FALSE Always keep the children in the DOM. This prop can be useful in SEO situation or when you want to maximize the responsiveness of the Popper.
#' \item modifiers `Array { data?: object, effect?: func, enabled?: bool, fn?: func, name?: any, options?: object, phase?: 'afterMain'| 'afterRead'| 'afterWrite'| 'beforeMain'| 'beforeRead'| 'beforeWrite'| 'main'| 'read'| 'write', requires?: Array string , requiresIfExists?: Array string  } ` \cr Default is - Popper.js is based on a "plugin-like" architecture, most of its features are fully encapsulated "modifiers".A modifier is a function that is called each time Popper.js needs to compute the position of the popper. For this reason, modifiers should be very performant to avoid bottlenecks. To learn how to create a modifier, read the modifiers documentation.
#' \item placement `'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top'` \cr Default is 'bottom' Popper placement.
#' \item popperOptions `{ modifiers?: array, onFirstUpdate?: func, placement?: 'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top', strategy?: 'absolute'| 'fixed' }` \cr Default is  Options provided to the Popper.js instance.
#' \item popperRef `ref` \cr Default is - A ref that points to the used popper instance.
#' \item slotProps `{ root?: func| object }` \cr Default is  The props used for each slot inside the Popper.
#' \item slots `{ root?: elementType }` \cr Default is  The components used for each slot inside the Popper. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item transition `bool` \cr Default is FALSE Help supporting a react-transition-group/Transition component.
#' }
#'
#' @md
#' @name Popper
NULL

#' Portal
#'
#' @description \url{https://mui.com/material-ui/api/portal/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The children to render into the container.
#' \item container `HTML element| func` \cr Default is - An HTML element or function that returns one. The container will have the portal children appended to it.You can also provide a callback, which is called in a React layout effect. This lets you set the container from a ref, and also makes server-side rendering possible.By default, it uses the body of the top-level document object, so it's simply document.body most of the time.
#' \item disablePortal `bool` \cr Default is FALSE The children will be under the DOM hierarchy of the parent component.
#' }
#'
#' @md
#' @name Portal
NULL

#' Radio
#'
#' @description \url{https://mui.com/material-ui/api/radio/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item checked `bool` \cr Default is - If true, the component is checked.
#' \item checkedIcon `node` \cr Default is  RadioButtonIcon checked /  The icon to display when the component is checked.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item disabled `bool` \cr Default is - If true, the component is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled.
#' \item icon `node` \cr Default is  RadioButtonIcon /  The icon to display when the component is unchecked.
#' \item id `string` \cr Default is - The id of the input element.
#' \item inputProps `object` \cr Default is - Attributes applied to the input element.Deprecated Use slotProps.input instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.Deprecated Use slotProps.input.ref instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item name `string` \cr Default is - Name attribute of the input element.
#' \item onChange `func` \cr Default is - Callback fired when the state is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string). You can pull out the new checked state by accessing event.target.checked (boolean).
#' \item required `bool` \cr Default is FALSE If true, the input element is required.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' The size of the component. small is equivalent to the dense radio styling.
#' \item slotProps `{ input?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ input?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The value of the component. The DOM API casts this to a string.
#' }
#'
#' @md
#' @name Radio
NULL

#' RadioGroup
#'
#' @description \url{https://mui.com/material-ui/api/radio-group/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item defaultValue `any` \cr Default is NA The default value. Use when the component is not controlled.
#' \item name `string` \cr Default is NA The name used to reference the value of the control. If you don't provide this prop, it falls back to a randomly generated name.
#' \item onChange `func` \cr Default is NA Callback fired when a radio button is selected.Signature:function(event: React.ChangeEvent, value: string) =  voidevent The event source of the callback.value The value of the selected radio button. You can pull out the new value by accessing event.target.value (string).
#' \item value `any` \cr Default is NA Value of the selected radio button. The DOM API casts this to a string.
#' }
#'
#' @md
#' @name RadioGroup
NULL

#' Rating
#'
#' @description \url{https://mui.com/material-ui/api/rating/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item defaultValue `number` \cr Default is null The default value. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item emptyIcon `node` \cr Default is  StarBorder fontSize="inherit" /  The icon to display when empty.
#' \item emptyLabelText `node` \cr Default is 'Empty' The label read when the rating input is empty.
#' \item getLabelText `func` \cr Default is function defaultLabelText(value)    return `$value || '0' Star$value !== 1 ? 's' : ''`;  Accepts a function which returns a string value that provides a user-friendly name for the current value of the rating. This is important for screen reader users.For localization purposes, you can use the provided translations.Signature:function(value: number) =  stringvalue The rating label's value to format.
#' \item highlightSelectedOnly `bool` \cr Default is FALSE If true, only the selected icon will be highlighted.
#' \item icon `node` \cr Default is  Star fontSize="inherit" /  The icon to display.
#' \item IconContainerComponent `elementType` \cr Default is function IconContainer(props)    const  value, ...other  = props;   return  span ...other / ;  The component containing the icon.Deprecated Use slotProps.icon.component instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item max `number` \cr Default is 5 Maximum rating.
#' \item name `string` \cr Default is - The name attribute of the radio input elements. This input name should be unique within the page. Being unique within a form is insufficient since the name is used to generate IDs.
#' \item onChange `func` \cr Default is - Callback fired when the value changes.Signature:function(event: React.SyntheticEvent, value: number | null) =  voidevent The event source of the callback.value The new value.
#' \item onChangeActive `func` \cr Default is - Callback function that is fired when the hover state changes.Signature:function(event: React.SyntheticEvent, value: number) =  voidevent The event source of the callback.value The new value.
#' \item precision `number` \cr Default is 1 The minimum increment value change allowed.
#' \item readOnly `bool` \cr Default is FALSE Removes all hover effects and pointer events.
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component.
#' \item slotProps `{ decimal?: func| object, icon?: func| object, label?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ decimal?: elementType, icon?: elementType, label?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `number` \cr Default is - The rating value.
#' }
#'
#' @md
#' @name Rating
NULL

#' ScopedCssBaseline
#'
#' @description \url{https://mui.com/material-ui/api/scoped-css-baseline/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item enableColorScheme `bool` \cr Default is NA Enable color-scheme CSS property to use theme.palette.mode. For more details, check out https://developer.mozilla.org/en-US/docs/Web/CSS/color-scheme For browser support, check out https://caniuse.com/?search=color-scheme
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ScopedCssBaseline
NULL

#' Select
#'
#' @description \url{https://mui.com/material-ui/api/select/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoWidth `bool` \cr Default is FALSE If true, the width of the popover will automatically be set according to the items inside the menu, otherwise it will be at least the width of the select input.
#' \item children `node` \cr Default is - The option elements to populate the select with. Can be some MenuItem when native is false and option when native is true. ️The MenuItem elements must be direct descendants when native is false.
#' \item classes `object` \cr Default is  Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item defaultOpen `bool` \cr Default is FALSE If true, the component is initially open. Use when the component open state is not controlled (i.e. the open prop is not defined). You can only use it when the native prop is false (default).
#' \item defaultValue `any` \cr Default is - The default value. Use when the component is not controlled.
#' \item displayEmpty `bool` \cr Default is FALSE If true, a value is displayed even if no items are selected.In order to display a meaningful value, a function can be passed to the renderValue prop which returns the value to be displayed when no items are selected. ️ When using this prop, make sure the label doesn't overlap with the empty displayed value. The label should either be hidden or forced to a shrunk state.
#' \item IconComponent `elementType` \cr Default is ArrowDropDownIcon The icon that displays the arrow.
#' \item id `string` \cr Default is - The id of the wrapper element or the select element when native.
#' \item input `element` \cr Default is - An Input element; does not have to be a material-ui specific Input.
#' \item inputProps `object` \cr Default is - Attributes applied to the input element. When native is true, the attributes are applied on the select element.
#' \item label `node` \cr Default is - See OutlinedInput#label
#' \item labelId `string` \cr Default is - The ID of an element that acts as an additional label. The Select will be labelled by the additional label and the selected value.
#' \item MenuProps `object` \cr Default is - Props applied to the Menu element.
#' \item multiple `bool` \cr Default is FALSE If true, value must be an array and the menu will support multiple selections.
#' \item native `bool` \cr Default is FALSE If true, the component uses a native select element.
#' \item onChange `func` \cr Default is - Callback fired when a menu item is selected.Signature:function(event: SelectChangeEvent, child?: object) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (any). Warning: This is a generic event, not a change event, unless the change event is caused by browser autofill.child The react element that was selected when native is false (default).
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed. Use it in either controlled (see the open prop), or uncontrolled mode (to detect when the Select collapses).Signature:function(event: object) =  voidevent The event source of the callback.
#' \item onOpen `func` \cr Default is - Callback fired when the component requests to be opened. Use it in either controlled (see the open prop), or uncontrolled mode (to detect when the Select expands).Signature:function(event: object) =  voidevent The event source of the callback.
#' \item open `bool` \cr Default is - If true, the component is shown. You can only use it when the native prop is false (default).
#' \item renderValue `func` \cr Default is - Render the selected value. You can only use it when the native prop is false (default).Signature:function(value: any) =  ReactNodevalue The value provided to the component.
#' \item SelectDisplayProps `object` \cr Default is - Props applied to the clickable div element.
#' \item sx `Array` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `''| any` \cr Default is - The input value. Providing an empty string will select no options. Set to an empty string '' if you don't want any of the available options to be selected.If the value is an object it must have reference equality with the option in order to be selected. If the value is not an object, the string representation must match with the string representation of the option in order to be selected.
#' \item variant `'filled'| 'outlined'| 'standard'` \cr Default is 'outlined' The variant to use.
#' }
#'
#' @md
#' @name Select
NULL

#' Skeleton
#'
#' @description \url{https://mui.com/material-ui/api/skeleton/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item animation `'pulse'| 'wave'| false` \cr Default is 'pulse' The animation. If false the animation effect is disabled.
#' \item children `node` \cr Default is - Optional children to infer width and height from.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item height `number| string` \cr Default is - Height of the skeleton. Useful when you don't want to adapt the skeleton to a text element but for instance a card.
#' \item sx `Array` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'circular'| 'rectangular'| 'rounded'| 'text'| string` \cr Default is 'text' The type of content that will be rendered.
#' \item width `number| string` \cr Default is - Width of the skeleton. Useful when the skeleton is inside an inline element with no width of its own.
#' }
#'
#' @md
#' @name Skeleton
NULL

#' Slide
#'
#' @description \url{https://mui.com/material-ui/api/slide/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `element` \cr Default is - A single child content element.This needs to be able to hold a ref.
#' \item addEndListener `func` \cr Default is - Add a custom transition end trigger. Called with the transitioning DOM node and a done callback. Allows for more fine grained transition end logic. Note: Timeouts are still used as a fallback if provided.
#' \item appear `bool` \cr Default is TRUE Perform the enter transition when it first mounts if in is also true. Set this to false to disable this behavior.
#' \item container `HTML element| func` \cr Default is - An HTML element, or a function that returns one. It's used to set the container the Slide is transitioning from.
#' \item direction `'down'| 'left'| 'right'| 'up'` \cr Default is 'down' Direction the child node will enter from.
#' \item easing `{ enter?: string, exit?: string }| string` \cr Default is    enter: theme.transitions.easing.easeOut,   exit: theme.transitions.easing.sharp,  The transition timing function. You may specify a single easing or a object containing enter and exit values.
#' \item in `bool` \cr Default is - If true, the component will transition in.
#' \item timeout `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' }
#'
#' @md
#' @name Slide
NULL

#' Slider
#'
#' @description \url{https://mui.com/material-ui/api/slider/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item aria-label `string` \cr Default is - The label of the slider.
#' \item aria-labelledby `string` \cr Default is - The id of the element containing a label for the slider.
#' \item aria-valuetext `string` \cr Default is - A string value that provides a user-friendly name for the current value of the slider.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item components `{ Input?: elementType, Mark?: elementType, MarkLabel?: elementType, Rail?: elementType, Root?: elementType, Thumb?: elementType, Track?: elementType, ValueLabel?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ input?: func| object, mark?: func| object, markLabel?: func| object, rail?: func| object, root?: func| object, thumb?: func| object, track?: func| object, valueLabel?: func| { children?: element, className?: string, open?: bool, style?: object, value?: node, valueLabelDisplay?: 'auto'| 'off'| 'on' } }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item defaultValue `Array` \cr Default is - The default value. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableSwap `bool` \cr Default is FALSE If true, the active thumb doesn't swap when moving pointer over a thumb while dragging another thumb.
#' \item getAriaLabel `func` \cr Default is - Accepts a function which returns a string value that provides a user-friendly name for the thumb labels of the slider. This is important for screen reader users.Signature:function(index: number) =  stringindex The thumb label's index to format.
#' \item getAriaValueText `func` \cr Default is - Accepts a function which returns a string value that provides a user-friendly name for the current value of the slider. This is important for screen reader users.Signature:function(value: number, index: number) =  stringvalue The thumb label's value to format.index The thumb label's index to format.
#' \item marks `Array { label?: node, value: number } | bool` \cr Default is FALSE Marks indicate predetermined values to which the user can move the slider. If true the marks are spaced according the value of the step prop. If an array, it should contain objects with value and an optional label keys.
#' \item max `number` \cr Default is 100 The maximum allowed value of the slider. Should not be equal to min.
#' \item min `number` \cr Default is 0 The minimum allowed value of the slider. Should not be equal to max.
#' \item name `string` \cr Default is - Name attribute of the hidden input element.
#' \item onChange `func` \cr Default is - Callback function that is fired when the slider's value changed.Signature:function(event: Event, value: Value, activeThumb: number) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (any). Warning: This is a generic event not a change event.value The new value.activeThumb Index of the currently moved thumb.
#' \item onChangeCommitted `func` \cr Default is - Callback function that is fired when the mouseup is triggered.Signature:function(event: React.SyntheticEvent | Event, value: Value) =  voidevent The event source of the callback. Warning: This is a generic event not a change event.value The new value.
#' \item orientation `'horizontal'| 'vertical'` \cr Default is 'horizontal' The component orientation.
#' \item scale `func` \cr Default is function Identity(x)    return x;  A transformation function, to change the scale of the slider.Signature:function(x: any) =  any
#' \item shiftStep `number` \cr Default is 10 The granularity with which the slider can step through values when using Page Up/Page Down or Shift + Arrow Up/Arrow Down.
#' \item size `'small'| 'medium'| string` \cr Default is 'medium' The size of the slider.
#' \item slotProps `{ input?: func| object, mark?: func| object, markLabel?: func| object, rail?: func| object, root?: func| object, thumb?: func| object, track?: func| object, valueLabel?: func| { children?: element, className?: string, open?: bool, style?: object, value?: node, valueLabelDisplay?: 'auto'| 'off'| 'on' } }` \cr Default is  The props used for each slot inside the Slider.
#' \item slots `{ input?: elementType, mark?: elementType, markLabel?: elementType, rail?: elementType, root?: elementType, thumb?: elementType, track?: elementType, valueLabel?: elementType }` \cr Default is  The components used for each slot inside the Slider. Either a string to use a HTML element or a component.
#' \item step `number` \cr Default is 1 The granularity with which the slider can step through values. (A "discrete" slider.) The min prop serves as the origin for the valid values. We recommend (max - min) to be evenly divisible by the step.When step is null, the thumb can only be slid onto marks provided with the marks prop.
#' \item sx `Array` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item tabIndex `number` \cr Default is - Tab index attribute of the hidden input element.
#' \item track `'inverted'| 'normal'| false` \cr Default is 'normal' The track presentation: normal the track will render a bar representing the slider value. inverted the track will render a bar representing the remaining slider value. false the track will render without a bar.
#' \item value `Array` \cr Default is - The value of the slider. For ranged sliders, provide an array with two values.
#' \item valueLabelDisplay `'auto'| 'off'| 'on'` \cr Default is 'off' Controls when the value label is displayed: auto the value label will display when the thumb is hovered or focused. on will display persistently. off will never display.
#' \item valueLabelFormat `func| string` \cr Default is function Identity(x)    return x;  The format function the value label's value.When a function is provided, it should have the following signature:- number value The value label's value to format - number index The value label's index to format
#' }
#'
#' @md
#' @name Slider
NULL

#' Snackbar
#'
#' @description \url{https://mui.com/material-ui/api/snackbar/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item action `node` \cr Default is - The action to display. It renders after the message, at the end of the snackbar.
#' \item anchorOrigin `{ horizontal: 'center'| 'left'| 'right', vertical: 'bottom'| 'top' }` \cr Default is  vertical: 'bottom', horizontal: 'left'  The anchor of the Snackbar. On smaller screens, the component grows to occupy all the available width, the horizontal alignment is ignored.
#' \item autoHideDuration `number` \cr Default is null The number of milliseconds to wait before automatically calling the onClose function. onClose should then set the state of the open prop to hide the Snackbar. This behavior is disabled by default with the null value.
#' \item children `element` \cr Default is - Replace the SnackbarContent component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item ClickAwayListenerProps `object` \cr Default is - Props applied to the ClickAwayListener element.Deprecated Use slotProps.clickAwayListener instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item ContentProps `object` \cr Default is - Props applied to the SnackbarContent element.Deprecated Use slotProps.content instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item disableWindowBlurListener `bool` \cr Default is FALSE If true, the autoHideDuration timer will expire even if the window is not focused.
#' \item key `any` \cr Default is - When displaying multiple consecutive snackbars using a single parent-rendered Snackbar, add the key prop to ensure independent treatment of each message. For instance, use Snackbar key=message. Otherwise, messages might update in place, and features like autoHideDuration could be affected.
#' \item message `node` \cr Default is - The message to display.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed. Typically onClose is used to set state in the parent component, which is used to control the Snackbar open prop. The reason parameter can optionally be used to control the response to onClose, for example ignoring clickaway.Signature:function(event: React.SyntheticEvent | Event, reason: string) =  voidevent The event source of the callback.reason Can be: "timeout" (autoHideDuration expired), "clickaway", or "escapeKeyDown".
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item resumeHideDuration `number` \cr Default is - The number of milliseconds to wait before dismissing after user interaction. If autoHideDuration prop isn't specified, it does nothing. If autoHideDuration prop is specified but resumeHideDuration isn't, we default to autoHideDuration / 2 ms.
#' \item slotProps `{ clickAwayListener?: func| { children: element, disableReactTree?: bool, mouseEvent?: 'onClick'| 'onMouseDown'| 'onMouseUp'| 'onPointerDown'| 'onPointerUp'| false, onClickAway?: func, touchEvent?: 'onTouchEnd'| 'onTouchStart'| false }, content?: func| object, root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ clickAwayListener?: elementType, content?: elementType, root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TransitionComponent `elementType` \cr Default is Grow The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated Use slots.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item transitionDuration `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' \item TransitionProps `object` \cr Default is  Props applied to the transition element. By default, the element is based on this Transition component.Deprecated Use slotProps.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name Snackbar
NULL

#' SnackbarContent
#'
#' @description \url{https://mui.com/material-ui/api/snackbar-content/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item action `node` \cr Default is - The action to display. It renders after the message, at the end of the snackbar.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item message `node` \cr Default is - The message to display.
#' \item role `string` \cr Default is 'alert' The ARIA role attribute of the element.
#' \item sx `Array` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name SnackbarContent
NULL

#' SpeedDial
#'
#' @description \url{https://mui.com/material-ui/api/speed-dial/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item ariaLabel `string` \cr Default is - The aria-label of the button element. Also used to provide the id for the SpeedDial element and its children.
#' \item children `node` \cr Default is - SpeedDialActions to display when the SpeedDial is open.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item direction `'down'| 'left'| 'right'| 'up'` \cr Default is 'up' The direction the actions open relative to the floating action button.
#' \item FabProps `object` \cr Default is  Props applied to the Fab element.
#' \item hidden `bool` \cr Default is FALSE If true, the SpeedDial is hidden.
#' \item icon `node` \cr Default is - The icon to display in the SpeedDial Fab. The SpeedDialIcon component provides a default Icon with animation.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed.Signature:function(event: object, reason: string) =  voidevent The event source of the callback.reason Can be: "toggle", "blur", "mouseLeave", "escapeKeyDown".
#' \item onOpen `func` \cr Default is - Callback fired when the component requests to be open.Signature:function(event: object, reason: string) =  voidevent The event source of the callback.reason Can be: "toggle", "focus", "mouseEnter".
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item openIcon `node` \cr Default is - The icon to display in the SpeedDial Fab when the SpeedDial is open.
#' \item slotProps `{ root?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ root?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TransitionComponent `elementType` \cr Default is Zoom * @deprecated Use `slots.transition` instead. This prop will be removed in a future major release. The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated Use slots.transition instead. This prop will be removed in a future major release. How to migrate
#' \item transitionDuration `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' \item TransitionProps `object` \cr Default is - Props applied to the transition element. By default, the element is based on this Transition component.Deprecated Use slotProps.transition instead. This prop will be removed in a future major release. How to migrate
#' }
#'
#' @md
#' @name SpeedDial
NULL

#' SpeedDialAction
#'
#' @description \url{https://mui.com/material-ui/api/speed-dial-action/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item delay `number` \cr Default is 0 Adds a transition delay, to allow a series of SpeedDialActions to be animated.
#' \item FabProps `object` \cr Default is  Props applied to the Fab component.Deprecated Use slotProps.fab instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item icon `node` \cr Default is - The icon to display in the SpeedDial Fab.
#' \item id `string` \cr Default is - This prop is used to help implement the accessibility logic. If you don't provide this prop. It falls back to a randomly generated id.
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item slotProps `{ fab?: func| object, staticTooltip?: func| object, staticTooltipLabel?: func| object, tooltip?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ fab?: elementType, staticTooltip?: elementType, staticTooltipLabel?: elementType, tooltip?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TooltipClasses `object` \cr Default is - classes prop applied to the Tooltip element.Deprecated Use slotProps.tooltip.classes instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item tooltipOpen `bool` \cr Default is FALSE Make the tooltip always visible when the SpeedDial is open.Deprecated Use slotProps.tooltip.open instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item tooltipPlacement `'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top'` \cr Default is 'left' Placement of the tooltip.Deprecated Use slotProps.tooltip.placement instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item tooltipTitle `node` \cr Default is - Label to display in the tooltip.Deprecated Use slotProps.tooltip.title instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name SpeedDialAction
NULL

#' SpeedDialIcon
#'
#' @description \url{https://mui.com/material-ui/api/speed-dial-icon/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item icon `node` \cr Default is NA The icon to display.
#' \item openIcon `node` \cr Default is NA The icon to display in the SpeedDial Floating Action Button when the SpeedDial is open.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name SpeedDialIcon
NULL

#' Stack
#'
#' @description \url{https://mui.com/material-ui/api/stack/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item direction `'column-reverse'| 'column'| 'row-reverse'| 'row'| Array 'column-reverse'| 'column'| 'row-reverse'| 'row' | object` \cr Default is 'column' Defines the flex-direction style property. It is applied for all screen sizes.
#' \item divider `node` \cr Default is - Add an element between each child.
#' \item spacing `Array number| string | number| object| string` \cr Default is 0 Defines the space between immediate children.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop, which allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item useFlexGap `bool` \cr Default is FALSE If true, the CSS flexbox gap is used instead of applying margin to children.While CSS gap removes the known limitations, it is not fully supported in some browsers. We recommend checking https://caniuse.com/?search=flex%20gap before using this flag.To enable this flag globally, follow the theme's default props configuration.
#' }
#'
#' @md
#' @name Stack
NULL

#' Step
#'
#' @description \url{https://mui.com/material-ui/api/step/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item active `bool` \cr Default is - Sets the step as active. Is passed to child components.
#' \item children `node` \cr Default is - Should be Step sub-components such as StepLabel, StepContent.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item completed `bool` \cr Default is - Mark the step as completed. Is passed to child components.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is - If true, the step is disabled, will also disable the button if StepButton is a child of Step. Is passed to child components.
#' \item expanded `bool` \cr Default is FALSE Expand the step.
#' \item index `integer` \cr Default is - The position of the step. The prop defaults to the value inherited from the parent Stepper component.
#' \item last `bool` \cr Default is - If true, the Step is displayed as rendered last. The prop defaults to the value inherited from the parent Stepper component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Step
NULL

#' StepButton
#'
#' @description \url{https://mui.com/material-ui/api/step-button/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA Can be a StepLabel or a node to place inside StepLabel as children.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item icon `node` \cr Default is NA The icon displayed by the step label.
#' \item optional `node` \cr Default is NA The optional node to display.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name StepButton
NULL

#' StepConnector
#'
#' @description \url{https://mui.com/material-ui/api/step-connector/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name StepConnector
NULL

#' StepContent
#'
#' @description \url{https://mui.com/material-ui/api/step-content/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item slotProps `{ transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TransitionComponent `elementType` \cr Default is Collapse The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated Use slots.transition instead. This prop will be removed in a future major release. How to migrate.
#' \item transitionDuration `'auto'| number| { appear?: number, enter?: number, exit?: number }` \cr Default is 'auto' Adjust the duration of the content expand transition. Passed as a prop to the transition component.Set to 'auto' to automatically calculate transition time based on height.
#' \item TransitionProps `object` \cr Default is - Props applied to the transition element. By default, the element is based on this Transition component.Deprecated Use slotProps.transition instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name StepContent
NULL

#' StepIcon
#'
#' @description \url{https://mui.com/material-ui/api/step-icon/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item active `bool` \cr Default is FALSE Whether this step is active.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item completed `bool` \cr Default is FALSE Mark the step as completed. Is passed to child components.
#' \item error `bool` \cr Default is FALSE If true, the step is marked as failed.
#' \item icon `node` \cr Default is - The label displayed in the step icon.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name StepIcon
NULL

#' StepLabel
#'
#' @description \url{https://mui.com/material-ui/api/step-label/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - In most cases will simply be a string containing a title for the label.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item componentsProps `{ label?: object }` \cr Default is  The props used for each slot inside.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item error `bool` \cr Default is FALSE If true, the step is marked as failed.
#' \item icon `node` \cr Default is - Override the default label of the step icon.
#' \item optional `node` \cr Default is - The optional node to display.
#' \item slotProps `{ label?: func| object, root?: func| object, stepIcon?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ label?: elementType, root?: elementType, stepIcon?: elementType }` \cr Default is  The components used for each slot inside.
#' \item StepIconComponent `elementType` \cr Default is - The component to render in place of the StepIcon.Deprecated Use slots.stepIcon instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item StepIconProps `object` \cr Default is - Props applied to the StepIcon element.Deprecated Use slotProps.stepIcon instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name StepLabel
NULL

#' Stepper
#'
#' @description \url{https://mui.com/material-ui/api/stepper/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item activeStep `integer` \cr Default is 0 Set the active step (zero based index). Set to -1 to disable all the steps.
#' \item alternativeLabel `bool` \cr Default is FALSE If set to 'true' and orientation is horizontal, then the step label will be positioned under the icon.
#' \item children `node` \cr Default is - Two or more  Step /  components.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item connector `element` \cr Default is  StepConnector /  An element to be placed between each step.
#' \item nonLinear `bool` \cr Default is FALSE If set the Stepper will not assist in controlling steps for linear flow.
#' \item orientation `'horizontal'| 'vertical'` \cr Default is 'horizontal' The component orientation (layout flow direction).
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Stepper
NULL

#' SvgIcon
#'
#' @description \url{https://mui.com/material-ui/api/svg-icon/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - Node passed into the SVG element.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'inherit'| 'action'| 'disabled'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'inherit' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide. You can use the htmlColor prop to apply a color attribute to the SVG element.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item fontSize `'inherit'| 'large'| 'medium'| 'small'| string` \cr Default is 'medium' The fontSize applied to the icon. Defaults to 24px, but can be configure to inherit font size.
#' \item htmlColor `string` \cr Default is - Applies a color attribute to the SVG element.
#' \item inheritViewBox `bool` \cr Default is FALSE If true, the root node will inherit the custom component's viewBox and the viewBox prop will be ignored. Useful when you want to reference a custom component and have SvgIcon pass that component's viewBox to the root node.
#' \item shapeRendering `string` \cr Default is - The shape-rendering attribute. The behavior of the different options is described on the MDN Web Docs. If you are having issues with blurry icons you should investigate this prop.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item titleAccess `string` \cr Default is - Provides a human-readable title for the element that contains it. https://www.w3.org/TR/SVG-access/#Equivalent
#' \item viewBox `string` \cr Default is '0 0 24 24' Allows you to redefine what the coordinates without units mean inside an SVG element. For example, if the SVG element is 500 (width) by 200 (height), and you pass viewBox="0 0 50 20", this means that the coordinates inside the SVG will go from the top left corner (0,0) to bottom right (50,20) and each unit will be worth 10px.
#' }
#'
#' @md
#' @name SvgIcon
NULL

#' SwipeableDrawer
#'
#' @description \url{https://mui.com/material-ui/api/swipeable-drawer/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed.Signature:function(event: React.SyntheticEvent  ) =  voidevent The event source of the callback.
#' \item onOpen `func` \cr Default is - Callback fired when the component requests to be opened.Signature:function(event: React.SyntheticEvent  ) =  voidevent The event source of the callback.
#' \item allowSwipeInChildren `func| bool` \cr Default is FALSE If set to true, the swipe event will open the drawer even if the user begins the swipe on one of the drawer's children. This can be useful in scenarios where the drawer is partially visible. You can customize it further with a callback that determines which children the user can drag over to open the drawer (for example, to ignore other elements that handle touch move events, like sliders).
#' \item children `node` \cr Default is - The content of the component.
#' \item disableBackdropTransition `bool` \cr Default is FALSE Disable the backdrop transition. This can improve the FPS on low-end devices.
#' \item disableDiscovery `bool` \cr Default is FALSE If true, touching the screen near the edge of the drawer will not slide in the drawer a bit to promote accidental discovery of the swipe gesture.
#' \item disableSwipeToOpen `bool` \cr Default is typeof navigator !== 'undefined' && /iPad|iPhone|iPod/.test(navigator.userAgent) If true, swipe to open is disabled. This is useful in browsers where swiping triggers navigation actions. Swipe to open is disabled on iOS browsers by default.
#' \item hysteresis `number` \cr Default is 0.52 Affects how far the drawer must be opened/closed to change its state. Specified as percent (0-1) of the width of the drawer
#' \item minFlingVelocity `number` \cr Default is 450 Defines, from which (average) velocity on, the swipe is defined as complete although hysteresis isn't reached. Good threshold is between 250 - 1000 px/s
#' \item open `bool` \cr Default is FALSE If true, the component is shown.
#' \item slotProps `{ backdrop?: func| object, docked?: func| object, paper?: func| object, root?: func| object, swipeArea?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ backdrop?: elementType, docked?: elementType, paper?: elementType, root?: elementType, swipeArea?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item SwipeAreaProps `object` \cr Default is - The element is used to intercept the touch events on the edge.Deprecated use the slotProps.swipeArea prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item swipeAreaWidth `number` \cr Default is 20 The width of the left most (or right most) area in px that the drawer can be swiped open from.
#' \item transitionDuration `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' }
#'
#' @md
#' @name SwipeableDrawer
NULL

#' Switch
#'
#' @description \url{https://mui.com/material-ui/api/switch/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item checked `bool` \cr Default is - If true, the component is checked.
#' \item checkedIcon `node` \cr Default is - The icon to display when the component is checked.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'default'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item defaultChecked `bool` \cr Default is - The default checked state. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is - If true, the component is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled.
#' \item edge `'end'| 'start'| false` \cr Default is FALSE If given, uses a negative margin to counteract the padding on one side (this is often helpful for aligning the left or right side of the icon with content above or below, without ruining the border size and shape).
#' \item icon `node` \cr Default is - The icon to display when the component is unchecked.
#' \item id `string` \cr Default is - The id of the input element.
#' \item inputProps `object` \cr Default is - Attributes applied to the input element.Deprecated Use slotProps.input instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.Deprecated Use slotProps.input.ref instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item onChange `func` \cr Default is - Callback fired when the state is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string). You can pull out the new checked state by accessing event.target.checked (boolean).
#' \item required `bool` \cr Default is FALSE If true, the input element is required.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' The size of the component. small is equivalent to the dense switch styling.
#' \item slotProps `{ input?: func| object, root?: func| object, switchBase?: func| object, thumb?: func| object, track?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ input?: elementType, root?: elementType, switchBase?: elementType, thumb?: elementType, track?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The value of the component. The DOM API casts this to a string. The browser uses "on" as the default value.
#' }
#'
#' @md
#' @name Switch
NULL

#' Tab
#'
#' @description \url{https://mui.com/material-ui/api/tab/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `unsupportedProp` \cr Default is - This prop isn't supported. Use the component prop if you need to change the children structure.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableFocusRipple `bool` \cr Default is FALSE If true, the  keyboard focus ripple is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled. ️ Without a ripple there is no styling for :focus-visible by default. Be sure to highlight the element by applying separate styles with the .Mui-focusVisible class.
#' \item icon `element| string` \cr Default is - The icon to display.
#' \item iconPosition `'bottom'| 'end'| 'start'| 'top'` \cr Default is 'top' The position of the icon relative to the label.
#' \item label `node` \cr Default is - The label element.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - You can provide your own value. Otherwise, we fallback to the child position index.
#' \item wrapped `bool` \cr Default is FALSE Tab labels appear in a single row. They can use a second line if needed.
#' }
#'
#' @md
#' @name Tab
NULL

#' TabContext
#'
#' @description \url{https://mui.com/material-ui/api/tab-context/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item value `number| string` \cr Default is NA The value of the currently selected Tab.
#' \item children `node` \cr Default is NA The content of the component.
#' }
#'
#' @md
#' @name TabContext
NULL

#' Table
#'
#' @description \url{https://mui.com/material-ui/api/table/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the table, normally TableHead and TableBody.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item padding `'checkbox'| 'none'| 'normal'` \cr Default is 'normal' Allows TableCells to inherit padding of the Table.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' Allows TableCells to inherit size of the Table.
#' \item stickyHeader `bool` \cr Default is FALSE Set the header sticky.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Table
NULL

#' TableBody
#'
#' @description \url{https://mui.com/material-ui/api/table-body/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component, normally TableRow.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TableBody
NULL

#' TableCell
#'
#' @description \url{https://mui.com/material-ui/api/table-cell/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item align `'center'| 'inherit'| 'justify'| 'left'| 'right'` \cr Default is 'inherit' Set the text-align on the table cell content.Monetary or generally number fields should be right aligned as that allows you to add them up quickly in your head without having to worry about decimals.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item padding `'checkbox'| 'none'| 'normal'` \cr Default is - Sets the padding applied to the cell. The prop defaults to the value ('default') inherited from the parent Table component.
#' \item scope `string` \cr Default is - Set scope attribute.
#' \item size `'medium'| 'small'| string` \cr Default is - Specify the size of the cell. The prop defaults to the value ('medium') inherited from the parent Table component.
#' \item sortDirection `'asc'| 'desc'| false` \cr Default is - Set aria-sort direction.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'body'| 'footer'| 'head'| string` \cr Default is - Specify the cell type. The prop defaults to the value inherited from the parent TableHead, TableBody, or TableFooter components.
#' }
#'
#' @md
#' @name TableCell
NULL

#' TableContainer
#'
#' @description \url{https://mui.com/material-ui/api/table-container/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component, normally Table.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TableContainer
NULL

#' TableFooter
#'
#' @description \url{https://mui.com/material-ui/api/table-footer/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component, normally TableRow.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TableFooter
NULL

#' TableHead
#'
#' @description \url{https://mui.com/material-ui/api/table-head/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component, normally TableRow.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is NA The component used for the root node. Either a string to use a HTML element or a component.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TableHead
NULL

#' TablePagination
#'
#' @description \url{https://mui.com/material-ui/api/table-pagination/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item count `integer` \cr Default is - The total number of rows.To enable server side pagination for an unknown number of items, provide -1.
#' \item onPageChange `func` \cr Default is - Callback fired when the page is changed.Signature:function(event: React.MouseEvent | null, page: number) =  voidevent The event source of the callback.page The page selected.
#' \item page `integer` \cr Default is - The zero-based index of the current page.
#' \item rowsPerPage `integer` \cr Default is - The number of rows per page.Set -1 to display all the rows.
#' \item ActionsComponent `elementType` \cr Default is TablePaginationActions The component used for displaying the actions. Either a string to use a HTML element or a component.
#' \item backIconButtonProps `object` \cr Default is - Props applied to the back arrow IconButton component.This prop is an alias for slotProps.actions.previousButton and will be overriden by it if both are used.Deprecated Use slotProps.actions.previousButton instead.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item getItemAriaLabel `func` \cr Default is function defaultGetAriaLabel(type)    return `Go to $type page`;  Accepts a function which returns a string value that provides a user-friendly name for the current page. This is important for screen reader users.For localization purposes, you can use the provided translations.Signature:function(type: string) =  stringtype The link or button type to format ('first' | 'last' | 'next' | 'previous').
#' \item labelDisplayedRows `func` \cr Default is function defaultLabelDisplayedRows( from, to, count )    return `$from–$to of $count !== -1 ? count : `more than $to``;  Customize the displayed rows label. Invoked with a  from, to, count, page  object.For localization purposes, you can use the provided translations.
#' \item labelRowsPerPage `node` \cr Default is 'Rows per page:' Customize the rows per page label.For localization purposes, you can use the provided translations.
#' \item nextIconButtonProps `object` \cr Default is - Props applied to the next arrow IconButton element.This prop is an alias for slotProps.actions.nextButton and will be overriden by it if both are used.Deprecated Use slotProps.actions.nextButton instead.
#' \item onRowsPerPageChange `func` \cr Default is - Callback fired when the number of rows per page is changed.Signature:function(event: React.ChangeEvent) =  voidevent The event source of the callback.
#' \item rowsPerPageOptions \cr Default is 10, 25, 50, 100 Customizes the options of the rows per page select field. If less than two options are available, no select field will be displayed. Use -1 for the value with a custom label to show all the rows.
#' \item SelectProps `object` \cr Default is  Props applied to the rows per page Select element.This prop is an alias for slotProps.select and will be overriden by it if both are used.Deprecated Use slotProps.select instead.
#' \item showFirstButton `bool` \cr Default is FALSE If true, show the first-page button.
#' \item showLastButton `bool` \cr Default is FALSE If true, show the last-page button.
#' \item slotProps \cr Default is  The props used for each slot inside.
#' \item slots  \cr Default is  The components used for each slot inside.
#' \item sx \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TablePagination
NULL

#' TableRow
#'
#' @description \url{https://mui.com/material-ui/api/table-row/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - Should be valid  tr  children such as TableCell.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item hover `bool` \cr Default is FALSE If true, the table row will shade on hover.
#' \item selected `bool` \cr Default is FALSE If true, the table row will have the selected shading.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TableRow
NULL

#' TableSortLabel
#'
#' @description \url{https://mui.com/material-ui/api/table-sort-label/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item active `bool` \cr Default is FALSE If true, the label will have the active styling (should be true for the sorted column).
#' \item children `node` \cr Default is - Label contents, the arrow will be appended automatically.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item direction `'asc'| 'desc'` \cr Default is 'asc' The current sort direction.
#' \item hideSortIcon `bool` \cr Default is FALSE Hide sort icon when active is false.
#' \item IconComponent `elementType` \cr Default is ArrowDownwardIcon Sort icon to use.
#' \item slotProps `{ icon?: func| object, root?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ icon?: elementType, root?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TableSortLabel
NULL

#' TabList
#'
#' @description \url{https://mui.com/material-ui/api/tab-list/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA A list of  Tab /  elements.
#' }
#'
#' @md
#' @name TabList
NULL

#' TabPanel
#'
#' @description \url{https://mui.com/material-ui/api/tab-panel/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item value `number| string` \cr Default is - The value of the corresponding Tab. Must use the index of the Tab when no value was passed to Tab.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item keepMounted `bool` \cr Default is FALSE Always keep the children in the DOM.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TabPanel
NULL

#' Tabs
#'
#' @description \url{https://mui.com/material-ui/api/tabs/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item action `ref` \cr Default is - Callback fired when the component mounts. This is useful when you want to trigger an action programmatically. It supports two actions: updateIndicator() and updateScrollButtons()
#' \item allowScrollButtonsMobile `bool` \cr Default is FALSE If true, the scroll buttons aren't forced hidden on mobile. By default the scroll buttons are hidden on mobile and takes precedence over scrollButtons.
#' \item aria-label `string` \cr Default is - The label for the Tabs as a string.
#' \item aria-labelledby `string` \cr Default is - An id or list of ids separated by a space that label the Tabs.
#' \item centered `bool` \cr Default is FALSE If true, the tabs are centered. This prop is intended for large views.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item indicatorColor `'primary'| 'secondary'| string` \cr Default is 'primary' Determines the color of the indicator.
#' \item onChange `func` \cr Default is - Callback fired when the value changes.Signature:function(event: React.SyntheticEvent, value: any) =  voidevent The event source of the callback. Warning: This is a generic event not a change event.value We default to the index of the child (number)
#' \item orientation `'horizontal'| 'vertical'` \cr Default is 'horizontal' The component orientation (layout flow direction).
#' \item ScrollButtonComponent `elementType` \cr Default is TabScrollButton The component used to render the scroll buttons.Deprecated use the slots.scrollButtons prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item scrollButtons `'auto'| false| true` \cr Default is 'auto' Determine behavior of scroll buttons when tabs are set to scroll: auto will only present them when not all the items are visible. true will always present them. false will never present them. By default the scroll buttons are hidden on mobile. This behavior can be disabled with allowScrollButtonsMobile.
#' \item selectionFollowsFocus `bool` \cr Default is - If true the selected tab changes on focus. Otherwise it only changes on activation.
#' \item slotProps `{ endScrollButtonIcon?: func| object, indicator?: func| object, list?: func| object, root?: func| object, scrollbar?: func| object, scrollButtons?: func| object, scroller?: func| object, startScrollButtonIcon?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ endScrollButtonIcon?: elementType, EndScrollButtonIcon?: elementType, indicator?: elementType, list?: elementType, root?: elementType, scrollbar?: elementType, scrollButtons?: elementType, scroller?: elementType, startScrollButtonIcon?: elementType, StartScrollButtonIcon?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item TabIndicatorProps `object` \cr Default is  Props applied to the tab indicator element.Deprecated use the slotProps.indicator prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item TabScrollButtonProps `object` \cr Default is  Props applied to the TabScrollButton element.Deprecated use the slotProps.scrollButtons prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item textColor `'inherit'| 'primary'| 'secondary'` \cr Default is 'primary' Determines the color of the Tab.
#' \item value `any` \cr Default is - The value of the currently selected Tab. If you don't want any selected Tab, you can set this prop to false.
#' \item variant `'fullWidth'| 'scrollable'| 'standard'` \cr Default is 'standard' Determines additional display behavior of the tabs: scrollable will invoke scrolling properties and allow for horizontally  scrolling (or swiping) of the tab bar. fullWidth will make the tabs grow to use all the available space,  which should be used for small views, like on mobile. standard will render the default state.
#' \item visibleScrollbar `bool` \cr Default is FALSE If true, the scrollbar is visible. It can be useful when displaying a long vertical list of tabs.
#' }
#'
#' @md
#' @name Tabs
NULL

#' TabScrollButton
#'
#' @description \url{https://mui.com/material-ui/api/tab-scroll-button/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item direction `'left'| 'right'` \cr Default is - The direction the button should indicate.
#' \item orientation `'horizontal'| 'vertical'` \cr Default is - The component orientation (layout flow direction).
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item slotProps `{ endScrollButtonIcon?: func| object, startScrollButtonIcon?: func| object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.
#' \item slots `{ EndScrollButtonIcon?: elementType, StartScrollButtonIcon?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TabScrollButton
NULL

#' TextareaAutosize
#'
#' @description \url{https://mui.com/material-ui/api/textarea-autosize/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item maxRows `number| string` \cr Default is - Maximum number of rows to display.
#' \item minRows `number| string` \cr Default is 1 Minimum number of rows to display.
#' }
#'
#' @md
#' @name TextareaAutosize
NULL

#' TextField
#'
#' @description \url{https://mui.com/material-ui/api/text-field/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item autoComplete `string` \cr Default is - This prop helps users to fill forms faster, especially on mobile devices. The name can be confusing, as it's more like an autofill. You can learn more about it following the specification.
#' \item autoFocus `bool` \cr Default is FALSE If true, the input element is focused during the first mount.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'primary' The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item defaultValue `any` \cr Default is - The default value. Use when the component is not controlled.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item error `bool` \cr Default is FALSE If true, the label is displayed in an error state.
#' \item FormHelperTextProps `object` \cr Default is - Props applied to the FormHelperText element.Deprecated Use slotProps.formHelperText instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item fullWidth `bool` \cr Default is FALSE If true, the input will take up the full width of its container.
#' \item helperText `node` \cr Default is - The helper text content.
#' \item id `string` \cr Default is - The id of the input element. Use this prop to make label and helperText accessible for screen readers.
#' \item InputLabelProps `object` \cr Default is - Props applied to the InputLabel element. Pointer events like onClick are enabled if and only if shrink is true.Deprecated Use slotProps.inputLabel instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item inputProps `object` \cr Default is - Attributes applied to the input element.Deprecated Use slotProps.htmlInput instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item InputProps `object` \cr Default is - Props applied to the Input element. It will be a FilledInput, OutlinedInput or Input component depending on the variant prop value.Deprecated Use slotProps.input instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item inputRef `ref` \cr Default is - Pass a ref to the input element.
#' \item label `node` \cr Default is - The label content.
#' \item margin `'dense'| 'none'| 'normal'` \cr Default is 'none' If dense or normal, will adjust vertical spacing of this and contained components.
#' \item maxRows `number| string` \cr Default is - Maximum number of rows to display when multiline option is set to true.
#' \item minRows `number| string` \cr Default is - Minimum number of rows to display when multiline option is set to true.
#' \item multiline `bool` \cr Default is FALSE If true, a textarea element is rendered instead of an input.
#' \item name `string` \cr Default is - Name attribute of the input element.
#' \item onChange `func` \cr Default is - Callback fired when the value is changed.Signature:function(event: object) =  voidevent The event source of the callback. You can pull out the new value by accessing event.target.value (string).
#' \item placeholder `string` \cr Default is - The short hint displayed in the input before the user enters a value.
#' \item required `bool` \cr Default is FALSE If true, the label is displayed as required and the input element is required.
#' \item rows `number| string` \cr Default is - Number of rows to display when multiline option is set to true.
#' \item select `bool` \cr Default is FALSE Render a Select element while passing the Input element to Select as input parameter. If this option is set you must pass the options of the select as children.
#' \item SelectProps `object` \cr Default is - Props applied to the Select element.Deprecated Use slotProps.select instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item size `'medium'| 'small'| string` \cr Default is 'medium' The size of the component.
#' \item slotProps `{ formHelperText?: func| object, htmlInput?: func| object, input?: func| object, inputLabel?: func| object, select?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ formHelperText?: elementType, htmlInput?: elementType, input?: elementType, inputLabel?: elementType, root?: elementType, select?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item type `string` \cr Default is - Type of the input element. It should be a valid HTML5 input type.
#' \item value `any` \cr Default is - The value of the input element, required for a controlled component.
#' \item variant `'filled'| 'outlined'| 'standard'` \cr Default is 'outlined' The variant to use.
#' }
#'
#' @md
#' @name TextField
NULL

#' Timeline
#'
#' @description \url{https://mui.com/material-ui/api/timeline/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item className `string` \cr Default is - className applied to the root element.
#' \item position `'alternate-reverse'| 'alternate'| 'left'| 'right'` \cr Default is 'right' The position where the TimelineContent should appear relative to the time axis.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name Timeline
NULL

#' TimelineConnector
#'
#' @description \url{https://mui.com/material-ui/api/timeline-connector/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TimelineConnector
NULL

#' TimelineContent
#'
#' @description \url{https://mui.com/material-ui/api/timeline-content/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TimelineContent
NULL

#' TimelineDot
#'
#' @description \url{https://mui.com/material-ui/api/timeline-dot/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'error'| 'grey'| 'info'| 'inherit'| 'primary'| 'secondary'| 'success'| 'warning'| string` \cr Default is 'grey' The dot can have a different colors.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'filled'| 'outlined'| string` \cr Default is 'filled' The dot can appear filled or outlined.
#' }
#'
#' @md
#' @name TimelineDot
NULL

#' TimelineItem
#'
#' @description \url{https://mui.com/material-ui/api/timeline-item/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item position `'alternate-reverse'| 'alternate'| 'left'| 'right'` \cr Default is NA The position where the timeline's item should appear.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TimelineItem
NULL

#' TimelineOppositeContent
#'
#' @description \url{https://mui.com/material-ui/api/timeline-opposite-content/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TimelineOppositeContent
NULL

#' TimelineSeparator
#'
#' @description \url{https://mui.com/material-ui/api/timeline-separator/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is NA The content of the component.
#' \item classes `object` \cr Default is NA Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is NA The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name TimelineSeparator
NULL

#' ToggleButton
#'
#' @description \url{https://mui.com/material-ui/api/toggle-button/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item value `any` \cr Default is - The value to associate with the button when selected in a ToggleButtonGroup.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'standard'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'standard' The color of the button when it is in an active state. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled.
#' \item disableFocusRipple `bool` \cr Default is FALSE If true, the  keyboard focus ripple is disabled.
#' \item disableRipple `bool` \cr Default is FALSE If true, the ripple effect is disabled. ️ Without a ripple there is no styling for :focus-visible by default. Be sure to highlight the element by applying separate styles with the .Mui-focusVisible class.
#' \item fullWidth `bool` \cr Default is FALSE If true, the button will take up the full width of its container.
#' \item onChange `func` \cr Default is - Callback fired when the state changes.Signature:function(event: React.MouseEvent, value: any) =  voidevent The event source of the callback.value of the selected button.
#' \item onClick `func` \cr Default is - Callback fired when the button is clicked.Signature:function(event: React.MouseEvent, value: any) =  voidevent The event source of the callback.value of the selected button.
#' \item selected `bool` \cr Default is - If true, the button is rendered in an active state.
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component. The prop defaults to the value inherited from the parent ToggleButtonGroup component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' }
#'
#' @md
#' @name ToggleButton
NULL

#' ToggleButtonGroup
#'
#' @description \url{https://mui.com/material-ui/api/toggle-button-group/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'standard'| 'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string` \cr Default is 'standard' The color of the button when it is selected. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item disabled `bool` \cr Default is FALSE If true, the component is disabled. This implies that all ToggleButton children will be disabled.
#' \item exclusive `bool` \cr Default is FALSE If true, only allow one of the child ToggleButton values to be selected.
#' \item fullWidth `bool` \cr Default is FALSE If true, the button group will take up the full width of its container.
#' \item onChange `func` \cr Default is - Callback fired when the value changes.Signature:function(event: React.MouseEvent, value: any) =  voidevent The event source of the callback.value of the selected buttons. When exclusive is true this is a single value; when false an array of selected values. If no value is selected and exclusive is true the value is null; when false an empty array.
#' \item orientation `'horizontal'| 'vertical'` \cr Default is 'horizontal' The component orientation (layout flow direction).
#' \item size `'small'| 'medium'| 'large'| string` \cr Default is 'medium' The size of the component.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item value `any` \cr Default is - The currently selected value within the group or an array of selected values when exclusive is false.The value must have reference equality with the option in order to be selected.
#' }
#'
#' @md
#' @name ToggleButtonGroup
NULL

#' Toolbar
#'
#' @description \url{https://mui.com/material-ui/api/toolbar/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `node` \cr Default is - The Toolbar children, usually a mixture of IconButton, Button and Typography. The Toolbar is a flex container, allowing flex item properties to be used to lay out the children.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item disableGutters `bool` \cr Default is FALSE If true, disables gutter padding.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'dense'| 'regular'| string` \cr Default is 'regular' The variant to use.
#' }
#'
#' @md
#' @name Toolbar
NULL

#' Tooltip
#'
#' @description \url{https://mui.com/material-ui/api/tooltip/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `element` \cr Default is - Tooltip reference element.This needs to be able to hold a ref.
#' \item arrow `bool` \cr Default is FALSE If true, adds an arrow to the tooltip.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item components `{ Arrow?: elementType, Popper?: elementType, Tooltip?: elementType, Transition?: elementType }` \cr Default is  The components used for each slot inside.Deprecated use the slots prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item componentsProps `{ arrow?: object, popper?: object, tooltip?: object, transition?: object }` \cr Default is  The extra props for the slot components. You can override the existing props or add new ones.Deprecated use the slotProps prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item describeChild `bool` \cr Default is FALSE Set to true if the title acts as an accessible description. By default the title acts as an accessible label for the child.
#' \item disableFocusListener `bool` \cr Default is FALSE Do not respond to focus-visible events.
#' \item disableHoverListener `bool` \cr Default is FALSE Do not respond to hover events.
#' \item disableInteractive `bool` \cr Default is FALSE Makes a tooltip not interactive, i.e. it will close when the user hovers over the tooltip before the leaveDelay is expired.
#' \item disableTouchListener `bool` \cr Default is FALSE Do not respond to long press touch events.
#' \item enterDelay `number` \cr Default is 100 The number of milliseconds to wait before showing the tooltip. This prop won't impact the enter touch delay (enterTouchDelay).
#' \item enterNextDelay `number` \cr Default is 0 The number of milliseconds to wait before showing the tooltip when one was already recently opened.
#' \item enterTouchDelay `number` \cr Default is 700 The number of milliseconds a user must touch the element before showing the tooltip.
#' \item followCursor `bool` \cr Default is FALSE If true, the tooltip follow the cursor over the wrapped element.
#' \item id `string` \cr Default is - This prop is used to help implement the accessibility logic. If you don't provide this prop. It falls back to a randomly generated id.
#' \item leaveDelay `number` \cr Default is 0 The number of milliseconds to wait before hiding the tooltip. This prop won't impact the leave touch delay (leaveTouchDelay).
#' \item leaveTouchDelay `number` \cr Default is 1500 The number of milliseconds after the user stops touching an element before hiding the tooltip.
#' \item onClose `func` \cr Default is - Callback fired when the component requests to be closed.Signature:function(event: React.SyntheticEvent) =  voidevent The event source of the callback.
#' \item onOpen `func` \cr Default is - Callback fired when the component requests to be open.Signature:function(event: React.SyntheticEvent) =  voidevent The event source of the callback.
#' \item open `bool` \cr Default is - If true, the component is shown.
#' \item placement `'auto-end'| 'auto-start'| 'auto'| 'bottom-end'| 'bottom-start'| 'bottom'| 'left-end'| 'left-start'| 'left'| 'right-end'| 'right-start'| 'right'| 'top-end'| 'top-start'| 'top'` \cr Default is 'bottom' Tooltip placement.
#' \item PopperComponent `elementType` \cr Default is - The component used for the popper.Deprecated use the slots.popper prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item PopperProps `object` \cr Default is  Props applied to the Popper element.Deprecated use the slotProps.popper prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item slotProps `{ arrow?: func| object, popper?: func| object, tooltip?: func| object, transition?: func| object }` \cr Default is  The props used for each slot inside.
#' \item slots `{ arrow?: elementType, popper?: elementType, tooltip?: elementType, transition?: elementType }` \cr Default is  The components used for each slot inside.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item title `node` \cr Default is - Tooltip title. Zero-length titles string, undefined, null and false are never displayed.
#' \item TransitionComponent `elementType` \cr Default is - The component used for the transition. Follow this guide to learn more about the requirements for this component.Deprecated use the slots.transition prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item TransitionProps `object` \cr Default is  Props applied to the transition element. By default, the element is based on this Transition component.Deprecated use the slotProps.transition prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' }
#'
#' @md
#' @name Tooltip
NULL

#' Typography
#'
#' @description \url{https://mui.com/material-ui/api/typography/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item align `'center'| 'inherit'| 'justify'| 'left'| 'right'` \cr Default is 'inherit' Set the text-align on the component.
#' \item children `node` \cr Default is - The content of the component.
#' \item classes `object` \cr Default is - Override or extend the styles applied to the component.See CSS classes API below for more details.
#' \item color `'primary'| 'secondary'| 'success'| 'error'| 'info'| 'warning'| 'textPrimary'| 'textSecondary'| 'textDisabled'| string` \cr Default is - The color of the component. It supports both default and custom theme colors, which can be added as shown in the palette customization guide.
#' \item component `elementType` \cr Default is - The component used for the root node. Either a string to use a HTML element or a component.
#' \item gutterBottom `bool` \cr Default is FALSE If true, the text will have a bottom margin.
#' \item noWrap `bool` \cr Default is FALSE If true, the text will not wrap, but instead will truncate with a text overflow ellipsis.Note that text overflow can only happen with block or inline-block level elements (the element needs to have a width in order to overflow).
#' \item paragraph `bool` \cr Default is FALSE If true, the element will be a paragraph element.Deprecated Use the component prop instead. This prop will be removed in a future major release. See Migrating from deprecated APIs for more details.
#' \item sx `Array func| object| bool | func| object` \cr Default is - The system prop that allows defining system overrides as well as additional CSS styles.See the `sx` page for more details.
#' \item variant `'body1'| 'body2'| 'button'| 'caption'| 'h1'| 'h2'| 'h3'| 'h4'| 'h5'| 'h6'| 'inherit'| 'overline'| 'subtitle1'| 'subtitle2'| string` \cr Default is 'body1' Applies the theme typography styles.
#' \item variantMapping `object` \cr Default is    h1: 'h1',   h2: 'h2',   h3: 'h3',   h4: 'h4',   h5: 'h5',   h6: 'h6',   subtitle1: 'h6',   subtitle2: 'h6',   body1: 'p',   body2: 'p',   inherit: 'p',  The component maps the variant prop to a range of different HTML element types. For instance, subtitle1 to  h6 . If you wish to change that mapping, you can provide your own. Alternatively, you can use the component prop.
#' }
#'
#' @md
#' @name Typography
NULL

#' Zoom
#'
#' @description \url{https://mui.com/material-ui/api/zoom/}
#'
#' @param ... Props to pass to the component.
#' @return Object with \code{shiny.tag} class suitable for use in the UI of a Shiny app.
#'
#' @details
#' \itemize{
#' \item children `element` \cr Default is - A single child content element.This needs to be able to hold a ref.
#' \item addEndListener `func` \cr Default is - Add a custom transition end trigger. Called with the transitioning DOM node and a done callback. Allows for more fine grained transition end logic. Note: Timeouts are still used as a fallback if provided.
#' \item appear `bool` \cr Default is TRUE Perform the enter transition when it first mounts if in is also true. Set this to false to disable this behavior.
#' \item easing `{ enter?: string, exit?: string }| string` \cr Default is - The transition timing function. You may specify a single easing or a object containing enter and exit values.
#' \item in `bool` \cr Default is - If true, the component will transition in.
#' \item timeout `number| { appear?: number, enter?: number, exit?: number }` \cr Default is    enter: theme.transitions.duration.enteringScreen,   exit: theme.transitions.duration.leavingScreen,  The duration for the transition, in milliseconds. You may specify a single timeout for all transitions, or individually with an object.
#' }
#'
#' @md
#' @name Zoom
NULL

