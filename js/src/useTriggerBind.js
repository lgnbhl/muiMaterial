import { useEffect, useRef } from 'react';

// Attaches an event handler to a DOM element identified by triggerId.
// The element may live outside the React tree (e.g. a plain Shiny actionButton),
// which is why we look it up by id rather than receiving a ref.
//
// The listener is delegated: it sits on `document` and matches the trigger with
// Element.closest() at event time. Unlike a direct addEventListener on the
// node, this survives the trigger element being replaced by a Shiny re-render
// (renderUI/uiOutput) — the listener would otherwise die with the replaced
// node. It also needs no MutationObserver for triggers that appear late.
// Because delegated events keep `currentTarget = document`, the matched
// trigger element is passed to the handler as a second argument.
//
// The listener is registered in the CAPTURE phase: a bubble-phase delegated
// listener never fires if anything between the trigger and `document` calls
// e.stopPropagation(), which silently kills the binding. Capture runs on the
// way down, before any bubbling handler can stop the event.
export function useTriggerBind(triggerId, handler, eventType = 'click') {
  // Store handler in a ref so the listener always calls the latest version
  // without needing to be re-registered when handler identity changes.
  const handlerRef = useRef(handler);
  handlerRef.current = handler;

  useEffect(() => {
    if (!triggerId) return undefined;

    const listener = (e) => {
      if (!(e.target instanceof Element)) return;
      const el = e.target.closest(`#${CSS.escape(triggerId)}`);
      if (el) handlerRef.current(e, el);
    };
    document.addEventListener(eventType, listener, true);

    // Purely diagnostic: flag a probably typo'd id. Binding is delegated, so
    // it still works if the element appears later than this check.
    const warnTimer = setTimeout(() => {
      if (!document.getElementById(triggerId)) {
        // eslint-disable-next-line no-console
        console.warn(
          `useTriggerBind: no element with id "${triggerId}" found after 5 s. ` +
          'Check that triggerId matches an existing DOM element id. ' +
          '(The trigger will still work if the element is added later.)'
        );
      }
    }, 5000);

    return () => {
      clearTimeout(warnTimer);
      document.removeEventListener(eventType, listener, true);
    };
  }, [triggerId, eventType]);
}
