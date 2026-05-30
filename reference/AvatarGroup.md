# AvatarGroup

<https://mui.com/material-ui/api/avatar-group/>

## Usage

``` r
AvatarGroup(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- children `node`  
  Default is - The avatars to stack.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- componentsProps `{ additionalAvatar?: object }`  
  Default is - The extra props for the slot components. You can override
  the existing props or add new ones.This prop is an alias for the
  slotProps prop.Deprecated use the slotProps prop instead. This prop
  will be removed in a future major release. See Migrating from
  deprecated APIs for more details.

- max `number`  
  Default is 5 Max avatars to show before +x.

- renderSurplus `func`  
  Default is - custom renderer of
  extraAvatarsSignature:function(surplus: number) =
  React.ReactNodesurplus number of extra avatarsReturns: custom element
  to display

- slotProps `{ additionalAvatar?: object, surplus?: func| object }`  
  Default is The props used for each slot inside.

- slots `{ surplus?: elementType }`  
  Default is The components used for each slot inside.

- spacing `'medium'| 'small'| number`  
  Default is 'medium' Spacing between avatars.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.

- total `number`  
  Default is children.length The total number of avatars. Used for
  calculating the number of extra avatars.

- variant `'circular'| 'rounded'| 'square'| string`  
  Default is 'circular' The variant to use.
