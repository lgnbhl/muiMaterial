import React from 'react';
import * as Material from '@mui/material';
import * as MaterialLab from '@mui/lab';
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';

/*
 * Tabs / TabList onChange handlers guard against bubbled synthetic onChange
 * events from descendant inputs (Checkbox, Switch, TextField, ...) by accepting
 * only string/number values — a real Tab click passes its `value` prop, whereas
 * a bubbled input change passes a boolean or undefined. This replaces the older
 * per-input e.stopPropagation() workaround, which broke parent/form onChange
 * delegation. See MUI issue: https://github.com/mui/material-ui/issues/4403
 */
const isTabValue = (v) => typeof v === 'string' || typeof v === 'number';

export const Button = ButtonAdapter(Material.Button);
export const Dialog = ButtonAdapter(Material.Dialog);
export const Drawer = ButtonAdapter(Material.Drawer);
export const Fab = ButtonAdapter(Material.Fab);
export const IconButton = ButtonAdapter(Material.IconButton);
export const ListItemButton = ButtonAdapter(Material.ListItemButton);
export const LoadingButton = ButtonAdapter(MaterialLab.LoadingButton);
export const Menu = ButtonAdapter(Material.Menu);
export const MenuItem = ButtonAdapter(Material.MenuItem);
export const Modal = ButtonAdapter(Material.Modal);
export const Snackbar = ButtonAdapter(Material.Snackbar);
export const StepButton = ButtonAdapter(Material.StepButton);
export const ToggleButton = ButtonAdapter(Material.ToggleButton);

/*
 * MUI's Autocomplete requires a `renderInput` function prop, which R cannot
 * express directly. The wrapper resolves the input in this order:
 *   1. `renderInput` — an explicit JS() callback, for full control.
 *   2. A child element (e.g. TextField, OutlinedInput) — cloned with `params`
 *      merged in. This is the idiomatic path and keeps the R-facing API
 *      agnostic: if MUI later replaces `renderInput` with a slot, only this
 *      wrapper changes.
 *   3. Default TextField + `inputProps` — kept for backward compatibility.
 */
const AutocompleteWrapper = ({ inputProps, renderInput, children, ...props }) => {
  const inputEl = React.Children.toArray(children).find(React.isValidElement);
  const resolvedRenderInput = renderInput
    ?? (inputEl
      ? (params) => React.cloneElement(inputEl, { ...params, ...inputEl.props })
      : (params) => <Material.TextField {...params} {...inputProps} />);
  return <Material.Autocomplete renderInput={resolvedRenderInput} {...props} />;
};

export const Autocomplete = InputAdapter(AutocompleteWrapper, (value, setValue, props) => ({
  // Match MUI's documented defaults: `[]` when multiple, `null` otherwise.
  // Using `??` (not `||`) so a legitimately falsy option value (0, "") is preserved.
  value: value ?? (props.multiple ? [] : null),
  onChange: (e, v) => setValue(v),
}));

// `checked: value ?? false` because MUI's SwitchBase forwards the raw
// `checked` prop to the underlying <input> (SwitchBase.js:218), and React
// DOM warns when `checked` is null/undefined.
export const Checkbox = InputAdapter(Material.Checkbox, (value, setValue) => ({
  checked: value ?? false,
  onChange: (e) => setValue(e.target.checked),
}));

export const FormControlLabel = InputAdapter(Material.FormControlLabel, (value, setValue) => ({
  checked: value ?? false,
  onChange: (e) => setValue(e.target.checked),
}));

export const Input = InputAdapter(Material.Input, (value, setValue) => ({
  value: value ?? '',
  onChange: (e) => setValue(e.target.value),
}), { policy: debounce, delay: 250 });

export const OutlinedInput = InputAdapter(Material.OutlinedInput, (value, setValue) => ({
  value: value ?? '',
  onChange: (e) => setValue(e.target.value),
}), { policy: debounce, delay: 250 });

export const Pagination = InputAdapter(Material.Pagination, (value, setValue) => ({
  page: value ?? 1,
  onChange: (e, v) => setValue(v),
}));

export const Radio = InputAdapter(Material.Radio, (value, setValue) => ({
  checked: value ?? false,
  onChange: (e) => setValue(e.target.checked),
}));

export const RadioGroup = InputAdapter(Material.RadioGroup, (value, setValue) => ({
  value: value ?? '',
  onChange: (e) => setValue(e.target.value),
}));

export const Rating = InputAdapter(Material.Rating, (value, setValue) => ({
  value: value ?? null,
  onChange: (e, v) => setValue(v),
}));

export const Select = InputAdapter(Material.Select, (value, setValue, props) => ({
  // MUI v9 throws if `multiple` is true and `value` is not an array
  value: value ?? (props.multiple ? [] : ''),
  onChange: (e) => setValue(e.target.value),
}));

export const Slider = InputAdapter(Material.Slider, (value, setValue) => ({
  value: value ?? 0,
  onChange: (e, v) => setValue(v),
}), { policy: debounce, delay: 250 });

export const Switch = InputAdapter(Material.Switch, (value, setValue) => ({
  checked: value ?? false,
  onChange: (e) => setValue(e.target.checked),
}));

export const Tabs = InputAdapter(Material.Tabs, (value, setValue) => ({
  value: value,
  onChange: (e, v) => { if (isTabValue(v)) setValue(v); },
}));

export const TextField = InputAdapter(Material.TextField, (value, setValue) => ({
  value: value ?? '',
  onChange: (e) => setValue(e.target.value),
}), { policy: debounce, delay: 250 });

export const TabContext = InputAdapter(MaterialLab.TabContext, (value, setValue) => ({
  value: value,
  onChange: (e, v) => { if (isTabValue(v)) setValue(v); },
}));

export const TabList = InputAdapter(MaterialLab.TabList, (value, setValue) => ({
  value: value,
  onChange: (e, v) => { if (isTabValue(v)) setValue(v); },
}));

export const TabPanel = InputAdapter(MaterialLab.TabPanel, (value, setValue) => ({
  value: value,
  onChange: (e, v) => { if (isTabValue(v)) setValue(v); },
}));

export const ToggleButtonGroup = InputAdapter(Material.ToggleButtonGroup, (value, setValue, props) => ({
  // `null` when exclusive, `[]` when not.
  value: value ?? (props.exclusive ? null : []),
  onChange: (e, v) => setValue(v),
}));
