# Avatar

<https://mui.com/material-ui/api/avatar/>

## Usage

``` r
Avatar(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- alt `string`  
  Default is - Used in combination with src or srcSet to provide an alt
  attribute for the rendered img element.

- children `node`  
  Default is - Used to render icon or text elements inside the Avatar if
  src is not set. This can be an element, or just a string.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- imgProps `object`  
  Default is - Attributes applied to the img element if the component is
  used to display an image. It can be used to listen for the loading
  error event.Deprecated Use slotProps.img instead. This prop will be
  removed in a future major release. See Migrating from deprecated APIs
  for more details.

- sizes `string`  
  Default is - The sizes attribute for the img element.

- slotProps `{ img?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ img?: elementType }`  
  Default is The components used for each slot inside.

- src `string`  
  Default is - The src attribute for the img element.

- srcSet `string`  
  Default is - The srcSet attribute for the img element. Use this
  attribute for responsive image display.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- variant `'circular'| 'rounded'| 'square'| string`  
  Default is 'circular' The shape of the avatar.
