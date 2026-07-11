import { describe, it, expect, vi, afterEach } from 'vitest';
import { render, screen, fireEvent } from '@testing-library/react';
import { Tab } from '@mui/material';
import { TabPanel } from '@mui/lab';
import { MuiStaticTabContext, MuiStaticTabList } from '../src/MuiStaticTabs';

const tabs = (contextProps = {}, listProps = {}) => (
  <MuiStaticTabContext {...contextProps}>
    <MuiStaticTabList {...listProps}>
      <Tab label="One" value="one" />
      <Tab label="Two" value="two" />
    </MuiStaticTabList>
    <TabPanel value="one">panel one</TabPanel>
    <TabPanel value="two">panel two</TabPanel>
  </MuiStaticTabContext>
);

afterEach(() => {
  vi.restoreAllMocks();
});

describe('MuiStaticTabContext / MuiStaticTabList', () => {
  it('uncontrolled: defaultValue selects the initial panel and clicks switch it', () => {
    render(tabs({ defaultValue: 'one' }));
    expect(screen.getByText('panel one')).toBeTruthy();
    expect(screen.queryByText('panel two')).toBeNull();
    fireEvent.click(screen.getByText('Two'));
    expect(screen.getByText('panel two')).toBeTruthy();
    expect(screen.queryByText('panel one')).toBeNull();
  });

  it('controlled: value is honored on every render and clicks alone do not move it', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {});
    render(tabs({ value: 'one' }));
    fireEvent.click(screen.getByText('Two'));
    expect(screen.getByText('panel one')).toBeTruthy();
    expect(screen.queryByText('panel two')).toBeNull();
    // The "controlled value with no writer" footgun warning fired.
    expect(warn).toHaveBeenCalledWith(expect.stringContaining('no way to change the active tab'));
  });

  it('controlled with an onChange on TabContext: the writer is called and no warning fires', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {});
    const onChange = vi.fn();
    render(tabs({ value: 'one', onChange }));
    fireEvent.click(screen.getByText('Two'));
    expect(onChange).toHaveBeenCalled();
    expect(onChange.mock.calls[0][1]).toBe('two');
    expect(warn).not.toHaveBeenCalled();
  });

  it('an onChange on TabList also counts as a writer', () => {
    const warn = vi.spyOn(console, 'warn').mockImplementation(() => {});
    const onChange = vi.fn();
    render(tabs({ value: 'one' }, { onChange }));
    fireEvent.click(screen.getByText('Two'));
    expect(onChange).toHaveBeenCalled();
    expect(warn).not.toHaveBeenCalled();
  });
});
