import { describe, it, expect, vi } from 'vitest';
import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import MuiDialogTriggerId from '../src/MuiDialogTriggerId';

// Also covers useTriggerBind (delegation, capture phase): the Dialog wrapper
// is the thinnest consumer of the hook.

const addTrigger = (id = 'trigger') => {
  const button = document.createElement('button');
  button.id = id;
  button.textContent = 'open';
  document.body.appendChild(button);
  return button;
};

describe('MuiDialogTriggerId', () => {
  it('opens when the trigger element is clicked', () => {
    const trigger = addTrigger();
    render(<MuiDialogTriggerId triggerId="trigger">dialog content</MuiDialogTriggerId>);
    expect(screen.queryByText('dialog content')).toBeNull();
    fireEvent.click(trigger);
    expect(screen.getByText('dialog content')).toBeTruthy();
  });

  it('still opens after the trigger element is replaced (delegated binding)', () => {
    const trigger = addTrigger();
    render(<MuiDialogTriggerId triggerId="trigger">dialog content</MuiDialogTriggerId>);
    trigger.remove();
    const replacement = addTrigger();
    fireEvent.click(replacement);
    expect(screen.getByText('dialog content')).toBeTruthy();
  });

  it('opens even when a bubble-phase handler stops propagation (capture-phase binding)', () => {
    const trigger = addTrigger();
    trigger.addEventListener('click', (e) => e.stopPropagation());
    render(<MuiDialogTriggerId triggerId="trigger">dialog content</MuiDialogTriggerId>);
    fireEvent.click(trigger);
    expect(screen.getByText('dialog content')).toBeTruthy();
  });

  it('closes itself and then notifies a caller-supplied onClose', async () => {
    const trigger = addTrigger();
    const onClose = vi.fn();
    render(
      <MuiDialogTriggerId triggerId="trigger" onClose={onClose}>
        dialog content
      </MuiDialogTriggerId>,
    );
    fireEvent.click(trigger);
    fireEvent.click(document.querySelector('.MuiBackdrop-root'));
    expect(onClose).toHaveBeenCalledTimes(1);
    expect(onClose.mock.calls[0][1]).toBe('backdropClick');
    await waitFor(() => expect(screen.queryByText('dialog content')).toBeNull());
  });
});
