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
// MUI v9's Autocomplete hands renderInput its input wiring as
// `params.slotProps` ({ inputLabel, input, htmlInput }). cloneElement would
// let the child's own `slotProps` replace that object wholesale (breaking the
// wiring: input.ref, the popup/clear endAdornment) or vice versa, so merge
// slot-by-slot: params first, the child's entries win per key. A child slot
// value that is not a mergeable object (e.g. a `JS()` callback taking
// ownerState) replaces the params slot entirely.
const mergeSlotProps = (paramsSlotProps, childSlotProps) => {
  if (!childSlotProps) return paramsSlotProps;
  const isMergeable = (v) => typeof v === 'object' && v !== null && !Array.isArray(v);
  const merged = { ...paramsSlotProps };
  Object.entries(childSlotProps).forEach(([slot, value]) => {
    merged[slot] = (isMergeable(value) && isMergeable(merged[slot]))
      ? { ...merged[slot], ...value }
      : value;
  });
  return merged;
};

export const AutocompleteStatic = ({ inputProps, renderInput, children, ...props }) => {
  const inputEl = React.Children.toArray(children).find(React.isValidElement);
  const resolvedRenderInput = renderInput
    ?? (inputEl
      // cloneElement keeps inputEl's own props and lets `params` win on
      // conflicts — the reverse of MUI's `<TextField {...params} {...yours}/>`
      // idiom, but params carry wiring (id, slotProps.input.ref) that must
      // survive. `slotProps` is the one key both sides legitimately set, so
      // it is composed (see mergeSlotProps) instead of clobbered: a child
      // TextField's `slotProps = list(input = list(startAdornment = ...))`
      // now works.
      ? (params) => React.cloneElement(inputEl, {
        ...params,
        slotProps: mergeSlotProps(params.slotProps, inputEl.props.slotProps),
      })
      : (params) => <Material.TextField {...params} {...inputProps} />);
  return <Material.Autocomplete renderInput={resolvedRenderInput} {...props} />;
};

export const Autocomplete = InputAdapter(AutocompleteStatic, (value, setValue, props) => ({
  // Match MUI's documented defaults: `[]` when multiple, `null` otherwise.
  // Using `??` (not `||`) so a legitimately falsy option value (0, "") is preserved.
  value: value ?? (props.multiple ? [] : null),
  onChange: (e, v) => setValue(v),
}));

// `value ?? false`: MUI treats `false` as "no action selected", so an initial
// NULL mounts controlled (no warning) instead of uncontrolled, as with Tabs.
export const BottomNavigation = InputAdapter(Material.BottomNavigation, (value, setValue) => ({
  value: value ?? false,
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

export const FilledInput = InputAdapter(Material.FilledInput, (value, setValue) => ({
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

export const NativeSelect = InputAdapter(Material.NativeSelect, (value, setValue) => ({
  value: value ?? '',
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
  // `value ?? false`: MUI Tabs treats `false` as "no tab selected", so an
  // initial NULL mounts controlled (no warning) instead of uncontrolled.
  value: value ?? false,
  onChange: (e, v) => { if (isTabValue(v)) setValue(v); },
}));

export const TextField = InputAdapter(Material.TextField, (value, setValue) => ({
  value: value ?? '',
  onChange: (e) => setValue(e.target.value),
}), { policy: debounce, delay: 250 });

// @mui/lab's TabContext has no onChange prop and marks `value` as required, so
// (a) there is no change event to relay to Shiny -- TabList below is the wrapper
// that reports tab clicks -- and (b) `value ?? ''` mounts it controlled with no
// selection instead of uncontrolled, avoiding both the required-prop and the
// controlled/uncontrolled console warnings on the first server-driven update.
export const TabContext = InputAdapter(MaterialLab.TabContext, (value) => ({
  value: value ?? '',
}));

// @mui/lab's TabList derives its displayed value from the surrounding TabContext
// (it reads context.value, ignoring its own `value` prop), so only `onChange`
// carries signal here -- it fires with the clicked Tab's `value`. We still pass
// `value` for API symmetry, but lab TabList does not use it for display.
export const TabList = InputAdapter(MaterialLab.TabList, (value, setValue) => ({
  value: value,
  onChange: (e, v) => { if (isTabValue(v)) setValue(v); },
}));

// TabPanel is display-only: it reads the active value from the surrounding
// TabContext and never fires onChange, so there is nothing to report to Shiny.
// We keep the adapter only so `TabPanel.shinyInput` resolves and the panel's
// own `value` prop is forwarded; no onChange wiring (it would never fire).
export const TabPanel = InputAdapter(MaterialLab.TabPanel, (value) => ({
  value: value,
}));

export const ToggleButtonGroup = InputAdapter(Material.ToggleButtonGroup, (value, setValue, props) => ({
  // `null` when exclusive, `[]` when not.
  value: value ?? (props.exclusive ? null : []),
  onChange: (e, v) => setValue(v),
}));
