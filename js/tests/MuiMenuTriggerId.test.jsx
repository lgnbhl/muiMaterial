import { describe, it, expect, vi } from 'vitest';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MenuItem } from '@mui/material';
import MuiMenuTriggerId from '../src/MuiMenuTriggerId';

const addTrigger = (id = 'menu-trigger') => {
  const button = document.createElement('button');
  button.id = id;
  button.textContent = 'open';
  document.body.appendChild(button);
  return button;
};

describe('MuiMenuTriggerId', () => {
  it('opens anchored to the trigger on click', () => {
    const trigger = addTrigger();
    render(
      <MuiMenuTriggerId triggerId="menu-trigger">
        <MenuItem>Profile</MenuItem>
      </MuiMenuTriggerId>,
    );
    expect(screen.queryByText('Profile')).toBeNull();
    fireEvent.click(trigger);
    expect(screen.getByText('Profile')).toBeTruthy();
  });

  it('closes after an item click by default', async () => {
    const trigger = addTrigger();
    render(
      <MuiMenuTriggerId triggerId="menu-trigger">
        <MenuItem>Profile</MenuItem>
      </MuiMenuTriggerId>,
    );
    fireEvent.click(trigger);
    fireEvent.click(screen.getByText('Profile'));
    await waitFor(() => expect(screen.queryByText('Profile')).toBeNull());
  });

  it('stays open with closeOnItemClick={false} and still calls the caller onClick', () => {
    const trigger = addTrigger();
    const onClick = vi.fn();
    render(
      <MuiMenuTriggerId triggerId="menu-trigger" closeOnItemClick={false} onClick={onClick}>
        <MenuItem>Profile</MenuItem>
      </MuiMenuTriggerId>,
    );
    fireEvent.click(trigger);
    fireEvent.click(screen.getByText('Profile'));
    expect(onClick).toHaveBeenCalled();
    expect(screen.getByText('Profile')).toBeTruthy();
  });
});
