import { describe, it, expect, vi } from 'vitest';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import MuiDrawerTriggerId from '../src/MuiDrawerTriggerId';

const addTrigger = (id = 'drawer-trigger') => {
  const button = document.createElement('button');
  button.id = id;
  button.textContent = 'open';
  document.body.appendChild(button);
  return button;
};

describe('MuiDrawerTriggerId', () => {
  it('opens on trigger click', () => {
    const trigger = addTrigger();
    render(<MuiDrawerTriggerId triggerId="drawer-trigger">drawer content</MuiDrawerTriggerId>);
    expect(screen.queryByText('drawer content')).toBeNull();
    fireEvent.click(trigger);
    expect(screen.getByText('drawer content')).toBeTruthy();
  });

  it('closes when a link inside is clicked (closeOnLinkClick default)', async () => {
    const trigger = addTrigger();
    render(
      <MuiDrawerTriggerId triggerId="drawer-trigger">
        <a href="#somewhere">nav link</a>
      </MuiDrawerTriggerId>,
    );
    fireEvent.click(trigger);
    fireEvent.click(screen.getByText('nav link'));
    await waitFor(() => expect(screen.queryByText('nav link')).toBeNull());
  });

  it('keeps close-on-link-click working when the caller supplies a paper onClick (regression)', async () => {
    const trigger = addTrigger();
    const callerOnClick = vi.fn();
    render(
      <MuiDrawerTriggerId
        triggerId="drawer-trigger"
        slotProps={{ paper: { onClick: callerOnClick } }}
      >
        <a href="#somewhere">nav link</a>
      </MuiDrawerTriggerId>,
    );
    fireEvent.click(trigger);
    fireEvent.click(screen.getByText('nav link'));
    expect(callerOnClick).toHaveBeenCalled();
    await waitFor(() => expect(screen.queryByText('nav link')).toBeNull());
  });

  it('stays open on link clicks with closeOnLinkClick={false}', () => {
    const trigger = addTrigger();
    render(
      <MuiDrawerTriggerId triggerId="drawer-trigger" closeOnLinkClick={false}>
        <a href="#somewhere">nav link</a>
      </MuiDrawerTriggerId>,
    );
    fireEvent.click(trigger);
    fireEvent.click(screen.getByText('nav link'));
    expect(screen.getByText('nav link')).toBeTruthy();
  });

  it('applies the width to the paper and honors a caller function sx', () => {
    const trigger = addTrigger();
    const fnSx = vi.fn(() => ({}));
    render(
      <MuiDrawerTriggerId
        triggerId="drawer-trigger"
        width={240}
        slotProps={{ paper: { sx: fnSx } }}
      >
        drawer content
      </MuiDrawerTriggerId>,
    );
    fireEvent.click(trigger);
    const paper = document.querySelector('.MuiDrawer-paper');
    expect(paper).toBeTruthy();
    // The function sx participated in styling (it would have been silently
    // dropped by the old object-spread merge).
    expect(fnSx).toHaveBeenCalled();
    expect(getComputedStyle(paper).width).toBe('240px');
  });
});
