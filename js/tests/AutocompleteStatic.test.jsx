import { describe, it, expect } from 'vitest';
import { render, screen } from '@testing-library/react';
import { TextField, InputAdornment } from '@mui/material';
import { AutocompleteStatic } from '../src/inputs';

describe('AutocompleteStatic', () => {
  it('renders a default TextField when no child or renderInput is given', () => {
    render(<AutocompleteStatic options={['a', 'b']} />);
    expect(screen.getByRole('combobox')).toBeTruthy();
  });

  it('uses a child element as the input and keeps its own props', () => {
    render(
      <AutocompleteStatic options={['a', 'b']}>
        <TextField label="Animal" />
      </AutocompleteStatic>,
    );
    expect(screen.getByLabelText('Animal')).toBeTruthy();
  });

  it('composes a child slotProps with the wiring instead of clobbering it (regression)', () => {
    render(
      <AutocompleteStatic options={['a', 'b']}>
        <TextField
          label="Animal"
          slotProps={{
            input: {
              startAdornment: <InputAdornment position="start">ADORN</InputAdornment>,
            },
          }}
        />
      </AutocompleteStatic>,
    );
    // The child's adornment survives the params merge...
    expect(screen.getByText('ADORN')).toBeTruthy();
    // ...and the Autocomplete wiring in the same slot survives the child:
    // the combobox role comes from slotProps.htmlInput, the popup indicator
    // from slotProps.input.endAdornment.
    expect(screen.getByRole('combobox')).toBeTruthy();
    expect(document.querySelector('.MuiAutocomplete-popupIndicator')).toBeTruthy();
  });

  it('gives an explicit renderInput precedence over a child element', () => {
    render(
      <AutocompleteStatic
        options={['a', 'b']}
        renderInput={(params) => <TextField {...params} label="FromRenderInput" />}
      >
        <TextField label="FromChild" />
      </AutocompleteStatic>,
    );
    expect(screen.getByLabelText('FromRenderInput')).toBeTruthy();
    expect(screen.queryByLabelText('FromChild')).toBeNull();
  });

  it('forwards inputProps to the default TextField', () => {
    render(<AutocompleteStatic options={['a']} inputProps={{ label: 'FromInputProps' }} />);
    expect(screen.getByLabelText('FromInputProps')).toBeTruthy();
  });
});
