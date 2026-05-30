# InputBase

<https://mui.com/material-ui/api/input-base/>

## Usage

``` r
InputBase(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- autoComplete `string`  
  Default is - This prop helps users to fill forms faster, especially on
  mobile devices. The name can be confusing, as it's more like an
  autofill. You can learn more about it following the specification.

- autoFocus `bool`  
  Default is - If true, the input element is focused during the first
  mount.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- color
  `'primary'| 'secondary'| 'error'| 'info'| 'success'| 'warning'| string`  
  Default is - The color of the component. It supports both default and
  custom theme colors, which can be added as shown in the palette
  customization guide. The prop defaults to the value ('primary')
  inherited from the parent FormControl component.

- components `{ Input?: elementType, Root?: elementType }`  
  Default is The components used for each slot inside.Deprecated use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps `{ input?: object, root?: object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- defaultValue `any`  
  Default is - The default value. Use when the component is not
  controlled.

- disabled `bool`  
  Default is - If true, the component is disabled. The prop defaults to
  the value (false) inherited from the parent FormControl component.

- disableInjectingGlobalStyles `bool`  
  Default is FALSE If true, GlobalStyles for the auto-fill keyframes
  will not be injected/removed on mount/unmount. Make sure to inject
  them at the top of your application. This option is intended to help
  with boosting the initial rendering performance if you are loading a
  big amount of Input components at once.

- endAdornment `node`  
  Default is - End InputAdornment for this component.

- error `bool`  
  Default is - If true, the input will indicate an error. The prop
  defaults to the value (false) inherited from the parent FormControl
  component.

- fullWidth `bool`  
  Default is FALSE If true, the input will take up the full width of its
  container.

- id `string`  
  Default is - The id of the input element.

- inputComponent `element type`  
  Default is 'input' The component used for the input element. Either a
  string to use a HTML element or a component.This needs to be able to
  hold a ref.

- inputProps `object`  
  Default is Attributes applied to the input element.

- inputRef `ref`  
  Default is - Pass a ref to the input element.

- margin `'dense'| 'none'`  
  Default is - If dense, will adjust vertical spacing. This is normally
  obtained via context from FormControl. The prop defaults to the value
  ('none') inherited from the parent FormControl component.

- maxRows `number| string`  
  Default is - Maximum number of rows to display when multiline option
  is set to true.

- minRows `number| string`  
  Default is - Minimum number of rows to display when multiline option
  is set to true.

- multiline `bool`  
  Default is FALSE If true, a TextareaAutosize element is rendered.

- name `string`  
  Default is - Name attribute of the input element.

- onBlur `func`  
  Default is - Callback fired when the input is blurred.Notice that the
  first argument (event) might be undefined.

- onChange `func`  
  Default is - Callback fired when the value is
  changed.Signature:function(event: React.ChangeEvent) = voidevent The
  event source of the callback. You can pull out the new value by
  accessing event.target.value (string).

- onInvalid `func`  
  Default is - Callback fired when the input doesn't satisfy its
  constraints.

- placeholder `string`  
  Default is - The short hint displayed in the input before the user
  enters a value.

- readOnly `bool`  
  Default is - It prevents the user from changing the value of the field
  (not from interacting with the field).

- required `bool`  
  Default is - If true, the input element is required. The prop defaults
  to the value (false) inherited from the parent FormControl component.

- rows `number| string`  
  Default is - Number of rows to display when multiline option is set to
  true.

- size `'medium'| 'small'| string`  
  Default is - The size of the component.

- slotProps `{ input?: object, root?: object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.This prop is an alias for the
  componentsProps prop, which will be deprecated in the future.

- slots `{ input?: elementType, root?: elementType }`  
  Default is The components used for each slot inside.This prop is an
  alias for the components prop, which will be deprecated in the future.

- startAdornment `node`  
  Default is - Start InputAdornment for this component.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- type `string`  
  Default is 'text' Type of the input element. It should be a valid
  HTML5 input type.

- value `any`  
  Default is - The value of the input element, required for a controlled
  component.
