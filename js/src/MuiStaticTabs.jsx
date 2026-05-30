import React from 'react';
import { TabContext, TabList } from '@mui/lab';

// Thin stateful wrappers around @mui/lab's TabContext and TabList.
// They exist so client-side tabs work without a Shiny server round-trip
// (useful in Quarto docs and static HTML). All rendering, styling, and
// behavior is delegated to @mui/lab — we only add a state layer.
//
// TabPanel does not need wrapping; @mui/lab's TabPanel reads from the
// TabContext provider directly, so the plain TabPanel() R function works.
//
// Two modes, following the React `<input>` / MUI convention:
//
//   1) Uncontrolled. Pass `defaultValue` (or nothing). The wrapper owns
//      the active-tab state and updates it on user clicks. This is the
//      right choice for Quarto docs and static HTML.
//
//        TabContext.static(defaultValue = "one", ...)
//
//   2) Controlled. Pass `value`. The caller is the source of truth; the
//      wrapper relays `value` straight through to @mui/lab on every
//      render and never mutates internal state. Combine with an
//      `onChange` (on TabList.static or on TabContext.static) that writes
//      back to whatever owns the value. The tidiest binding needs no JS:
//      make the tab a URL path segment, link each Tab with `href`
//      (e.g. "#/overview"), and read it back with
//      `reactRouter::useParams(as = "value", selector = "tab")`. Use
//      useParams (a scalar), not useSearchParams, which returns `getAll()`,
//      an array that never matches a TabPanel's string value. A Shiny input
//      or a parent's state work too.
//
//        TabContext.static(value = url_param_value, ...)
//
// Mode is decided once, at the first render, from whether `value` is
// supplied -- essentially how React decides for `<input>`. It is captured
// in a ref so a later prop flip can't silently switch modes; if the prop
// does flip, a console.warn fires once to flag the misuse. For the
// `.static` wrapper this signal is reliable because, unlike `.shinyInput`
// bindings, nothing injects a `value` prop unless the caller passed one
// (R-side `value` defaults to NULL). We treat both `undefined` and `null`
// as "not supplied" (`!= null`) so it doesn't matter whether the R->JS
// bridge drops a NULL prop or forwards it as JS `null`.

const isSupplied = (v) => v != null;

// A Tab that navigates on its own -- via an `href`, an `onClick`, or a routing
// `component` (e.g. a NavLink) -- is itself a writer: clicking it changes the
// active tab with no `onChange` involved. Used so controlled tabs driven by
// links (the URL-bound pattern in the Tabs vignette) don't trip the
// "controlled value with no writer" warning below.
const childIsWriter = (child) =>
  React.isValidElement(child) &&
  child.props != null &&
  (isSupplied(child.props.href) ||
    isSupplied(child.props.onClick) ||
    isSupplied(child.props.component));

const SetValueContext = React.createContext(null);

export function MuiStaticTabContext({
  value,
  defaultValue,
  onChange,
  children,
  ...props
}) {
  // Decide mode once, at mount, and freeze it for the component's life.
  const isControlled = React.useRef(isSupplied(value)).current;

  // Uncontrolled state. Seeded from `defaultValue`; unused when controlled.
  const [internalValue, setInternalValue] = React.useState(defaultValue);

  // Warn once if the caller flips between controlled and uncontrolled
  // after mount -- same footgun React guards against for <input>.
  const warnedRef = React.useRef(false);
  React.useEffect(() => {
    const nowControlled = isSupplied(value);
    if (nowControlled !== isControlled && !warnedRef.current) {
      warnedRef.current = true;
      // eslint-disable-next-line no-console
      console.warn(
        `MuiStaticTabContext: switching from ${
          isControlled ? 'controlled' : 'uncontrolled'
        } to ${
          nowControlled ? 'controlled' : 'uncontrolled'
        } is not supported. Pick one for the lifetime of the component: ` +
          'pass `value` for controlled, `defaultValue` for uncontrolled.'
      );
    }
  }, [value, isControlled]);

  // Always create the noop with a hook (no conditional hook calls), then
  // pick the setter. Controlled mode: the parent owns `value`, so the
  // setter is a noop and the parent's onChange does the writing.
  // Uncontrolled mode: the wrapper owns and updates internal state.
  const noop = React.useCallback(() => {}, []);
  const currentValue = isControlled ? value : internalValue;
  const setValue = isControlled ? noop : setInternalValue;

  // Expose onChange via context so <MuiStaticTabList> can call it without
  // the parent putting it on the TabList directly. Kept in a ref so the
  // context value is stable across renders. This preserves an
  // onChange-on-TabContext ergonomic while onChange-on-TabList still works.
  const onChangeRef = React.useRef(onChange);
  React.useEffect(() => {
    onChangeRef.current = onChange;
  });

  // Track whether a writer exists, so we can warn about a controlled tab
  // that has no way to move -- the classic "value set but no onChange"
  // footgun React itself warns about for <input>. A writer is either an
  // onChange on this TabContext.static, or one registered by a child
  // <MuiStaticTabList> via registerWriter() -- which a TabList does when it
  // has its own onChange OR when its Tabs navigate via href/onClick/component
  // (the URL-bound pattern). Child effects run before parent effects, so by
  // the time the warning effect below runs, any TabList writer has registered.
  const hasWriterRef = React.useRef(false);
  hasWriterRef.current = isSupplied(onChange);
  const registerWriter = React.useCallback(() => {
    hasWriterRef.current = true;
  }, []);

  const warnedNoWriterRef = React.useRef(false);
  React.useEffect(() => {
    if (isControlled && !hasWriterRef.current && !warnedNoWriterRef.current) {
      warnedNoWriterRef.current = true;
      // eslint-disable-next-line no-console
      console.warn(
        'MuiStaticTabContext: you provided a `value` prop (controlled mode) ' +
          'with no way to change the active tab. Add an `onChange` (on ' +
          'TabList.static or TabContext.static) that writes the new value back ' +
          'to your source of truth, give each Tab an `href` so clicks navigate ' +
          '(the URL-bound pattern), or use `defaultValue` for self-managing tabs.'
      );
    }
  }, [isControlled]);

  const contextValue = React.useMemo(
    () => ({ setValue, onChangeRef, registerWriter }),
    [setValue, registerWriter]
  );

  return (
    <SetValueContext.Provider value={contextValue}>
      <TabContext value={currentValue} {...props}>{children}</TabContext>
    </SetValueContext.Provider>
  );
}

export function MuiStaticTabList({ onChange, ...props }) {
  const ctx = React.useContext(SetValueContext);

  // Tabs that navigate on their own (href/onClick/component) are writers too,
  // so link-driven controlled tabs don't look "frozen" to the warning above.
  const hasLinkChild = React.Children.toArray(props.children).some(childIsWriter);

  // Let the surrounding TabContext know a writer exists, so it won't warn
  // about a controlled-but-frozen tab when the onChange lives here -- or when
  // the Tabs are links rather than an onChange.
  React.useEffect(() => {
    if ((isSupplied(onChange) || hasLinkChild) && ctx && ctx.registerWriter) {
      ctx.registerWriter();
    }
  }, [onChange, hasLinkChild, ctx]);

  return (
    <TabList
      onChange={(e, v) => {
        // Update internal state if uncontrolled (noop if controlled).
        if (ctx && ctx.setValue) ctx.setValue(v);
        // Call the per-TabList onChange if supplied.
        if (onChange) onChange(e, v);
        // Also call any onChange supplied on the surrounding
        // TabContext.static.
        if (ctx && ctx.onChangeRef && ctx.onChangeRef.current) {
          ctx.onChangeRef.current(e, v);
        }
      }}
      {...props}
    />
  );
}
