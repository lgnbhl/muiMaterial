import * as Material from '@mui/material';
import * as MaterialLab from '@mui/lab';
import { ButtonAdapter, InputAdapter, debounce } from '@/shiny.react';

export const Button = ButtonAdapter(Material.Button);
export const Drawer = ButtonAdapter(Material.Drawer);
export const IconButton = ButtonAdapter(Material.IconButton);
export const Fab = ButtonAdapter(Material.Fab);
export const Menu = ButtonAdapter(Material.Menu);
export const ToggleButton = ButtonAdapter(Material.ToggleButton);
export const ListItemButton = ButtonAdapter(Material.ListItemButton);

const AutocompleteWrapper = ({ inputProps, ...props }) => (
  <Material.Autocomplete
    renderInput={(params) => <Material.TextField {...params} {...inputProps} />}
    {...props}
  />
);

export const Autocomplete = InputAdapter(AutocompleteWrapper, (value, setValue) => ({
  value: value || [],
  onChange: (e, v) => setValue(v),
}));

/* e.stopPropagation() fix propagation issue when used with TabContext */
/* https://github.com/mui/material-ui/issues/4403 */
export const Checkbox = InputAdapter(Material.Checkbox, (value, setValue) => ({
  checked: value,
  onChange: e => { setValue(e.target.checked); e.stopPropagation() },
}));

export const FormControlLabel = InputAdapter(Material.FormControlLabel, (value, setValue) => ({
  value: value,
  onChange: (e) => setValue(e.target.checked),
}));

export const Input = InputAdapter(Material.Input, (value, setValue) => ({
  value: value,
  onChange: (e) => setValue(e.target.value),
}));

export const Radio = InputAdapter(Material.Radio, (value, setValue) => ({
  checked: value,
  onChange: (e) => setValue(e.target.checked),
}));

export const RadioGroup = InputAdapter(Material.RadioGroup, (value, setValue) => ({
  value: value,
  onChange: (e) => setValue(e.target.value),
}));

export const Rating = InputAdapter(Material.Rating, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}));

export const Select = InputAdapter(Material.Select, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(e.target.value),
}));

export const Slider = InputAdapter(Material.Slider, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}), { policy: debounce, delay: 250 });

export const Switch = InputAdapter(Material.Switch, (value, setValue) => ({
  checked: value,
  onChange: (e) => setValue(e.target.checked),
}));

export const Tabs = InputAdapter(Material.Tabs, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}));

/* e.stopPropagation() fix propagation issue when used with TabContext */
/* https://github.com/mui/material-ui/issues/4403 */
export const TextField = InputAdapter(Material.TextField, (value, setValue) => ({
  value: value,
  onChange: (e, v) => { setValue(e.target.value) ; e.stopPropagation() },
}), { policy: debounce, delay: 250 });

export const TabContext = InputAdapter(MaterialLab.TabContext, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}));

export const TabList = InputAdapter(MaterialLab.TabList, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}));

export const TabPanel = InputAdapter(MaterialLab.TabPanel, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}));

export const ToggleButtonGroup = InputAdapter(Material.ToggleButtonGroup, (value, setValue) => ({
  value: value,
  onChange: (e, v) => setValue(v),
}));
