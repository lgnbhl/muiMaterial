# Alert

<https://mui.com/material-ui/api/alert/>

## Usage

``` r
Alert(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- action `node`  
  Default is - The action to display. It renders after the message, at
  the end of the alert.

- children `node`  
  Default is - The content of the component.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- closeText `string`  
  Default is 'Close' Override the default label for the close popup icon
  button.For localization purposes, you can use the provided
  translations.

- color `'error'| 'info'| 'success'| 'warning'| string`  
  Default is - The color of the component. Unless provided, the value is
  taken from the severity prop. It supports both default and custom
  theme colors, which can be added as shown in the palette customization
  guide.

- components `{ CloseButton?: elementType, CloseIcon?: elementType }`  
  Default is The components used for each slot inside.Deprecated use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps `{ closeButton?: object, closeIcon?: object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- icon `node`  
  Default is - Override the icon displayed before the children. Unless
  provided, the icon is mapped to the value of the severity prop. Set to
  false to remove the icon.

- iconMapping
  `{ error?: node, info?: node, success?: node, warning?: node }`  
  Default is - The component maps the severity prop to a range of
  different icons, for instance success to successoutlined. If you wish
  to change this mapping, you can provide your own. Alternatively, you
  can use the icon prop to override the icon displayed.

- onClose `func`  
  Default is - Callback fired when the component requests to be closed.
  When provided and no action prop is set, a close icon button is
  displayed that triggers the callback when
  clicked.Signature:function(event: React.SyntheticEvent) = voidevent
  The event source of the callback.

- role `string`  
  Default is 'alert' The ARIA role attribute of the element.

- severity `'error'| 'info'| 'success'| 'warning'| string`  
  Default is 'success' The severity of the alert. This defines the color
  and icon used.

- slotProps
  `{ action?: func| object, closeButton?: func| object, closeIcon?: func| object, icon?: func| object, message?: func| object, root?: func| object }`  
  Default is The props used for each slot inside.

- slots
  `{ action?: elementType, closeButton?: elementType, closeIcon?: elementType, icon?: elementType, message?: elementType, root?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'filled'| 'outlined'| 'standard'| string`  
  Default is 'standard' The variant to use.
