# ListItem

<https://mui.com/material-ui/api/list-item/>

## Usage

``` r
ListItem(...)
```

## Arguments

- ...:

  Props to pass to the component.

## Value

Object with `shiny.tag` class suitable for use in the UI of a Shiny app.

## Details

- alignItems `'center'| 'flex-start'`  
  Default is 'center' Defines the align-items style property.

- children `node`  
  Default is - The content of the component if a ListItemSecondaryAction
  is used it must be the last child.

- classes `object`  
  Default is - Override or extend the styles applied to the
  component.See CSS classes API below for more details.

- component `elementType`  
  Default is - The component used for the root node. Either a string to
  use a HTML element or a component.

- components `{ Root?: elementType }`  
  Default is The components used for each slot inside.Deprecated Use the
  slots prop instead. This prop will be removed in a future major
  release. See Migrating from deprecated APIs for more details.

- componentsProps `{ root?: object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.Deprecated Use the slotProps prop
  instead. This prop will be removed in a future major release. See
  Migrating from deprecated APIs for more details.

- ContainerComponent `element type`  
  Default is 'li' The container component used when a
  ListItemSecondaryAction is the last child.This needs to be able to
  hold a ref.Deprecated Use the component or slots.root prop instead.
  This prop will be removed in a future major release. See Migrating
  from deprecated APIs for more details.

- ContainerProps `object`  
  Default is Props applied to the container component if used.Deprecated
  Use the slotProps.root prop instead. This prop will be removed in a
  future major release. See Migrating from deprecated APIs for more
  details.

- dense `bool`  
  Default is FALSE If true, compact vertical padding designed for
  keyboard and mouse input is used. The prop defaults to the value
  inherited from the parent List component.

- disableGutters `bool`  
  Default is FALSE If true, the left and right padding is removed.

- disablePadding `bool`  
  Default is FALSE If true, all padding is removed.

- divider `bool`  
  Default is FALSE If true, a 1px light border is added to the bottom of
  the list item.

- secondaryAction `node`  
  Default is - The element to display at the end of ListItem.

- slotProps `{ root?: object }`  
  Default is The extra props for the slot components. You can override
  the existing props or add new ones.

- slots `{ root?: elementType }`  
  Default is The components used for each slot inside.

- sx `Array func| object| bool | func| object`  
  Default is - The system prop that allows defining system overrides as
  well as additional CSS styles.See the `sx` page for more details.
