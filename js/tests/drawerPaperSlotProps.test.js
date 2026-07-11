import { describe, it, expect, vi } from 'vitest';
import { mergePaperSlotProps } from '../src/drawerPaperSlotProps';

describe('mergePaperSlotProps', () => {
  it('builds a width-only paper slot when the caller passes no slotProps', () => {
    const out = mergePaperSlotProps(undefined, { width: 280 });
    expect(out.paper.sx).toEqual([{ width: 280 }]);
    expect(out.paper.onClick).toBeUndefined();
  });

  it('appends a caller object sx after the width entry', () => {
    const out = mergePaperSlotProps(
      { paper: { sx: { bgcolor: 'red' } } },
      { width: 240 },
    );
    expect(out.paper.sx).toEqual([{ width: 240 }, { bgcolor: 'red' }]);
  });

  it('preserves a caller function sx (regression: object-spread dropped it)', () => {
    const fnSx = (theme) => ({ zIndex: theme.zIndex.drawer + 1 });
    const out = mergePaperSlotProps({ paper: { sx: fnSx } }, { width: 280 });
    expect(out.paper.sx).toEqual([{ width: 280 }, fnSx]);
  });

  it('flattens a caller array sx (regression: object-spread mangled it)', () => {
    const fnSx = () => ({});
    const out = mergePaperSlotProps(
      { paper: { sx: [{ p: 1 }, fnSx] } },
      { width: 280 },
    );
    expect(out.paper.sx).toEqual([{ width: 280 }, { p: 1 }, fnSx]);
  });

  it('composes wrapper and caller paper onClick, wrapper first (regression: caller onClick replaced the close-on-link handler)', () => {
    const calls = [];
    const paperOnClick = vi.fn(() => calls.push('wrapper'));
    const callerOnClick = vi.fn(() => calls.push('caller'));
    const out = mergePaperSlotProps(
      { paper: { onClick: callerOnClick } },
      { width: 280, paperOnClick },
    );
    const event = { type: 'click' };
    out.paper.onClick(event);
    expect(paperOnClick).toHaveBeenCalledWith(event);
    expect(callerOnClick).toHaveBeenCalledWith(event);
    expect(calls).toEqual(['wrapper', 'caller']);
  });

  it('keeps a caller-only paper onClick working', () => {
    const callerOnClick = vi.fn();
    const out = mergePaperSlotProps(
      { paper: { onClick: callerOnClick } },
      { width: 280 },
    );
    out.paper.onClick({});
    expect(callerOnClick).toHaveBeenCalledTimes(1);
  });

  it('lets other caller paper props and other slots win untouched', () => {
    const out = mergePaperSlotProps(
      { paper: { elevation: 8 }, backdrop: { invisible: true } },
      { width: 280 },
    );
    expect(out.paper.elevation).toBe(8);
    expect(out.backdrop).toEqual({ invisible: true });
  });
});
