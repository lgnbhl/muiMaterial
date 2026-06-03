import { useEffect, useRef } from 'react';

// Attaches an event handler to a DOM element identified by triggerId.
// The element may live outside the React tree (e.g. a plain Shiny actionButton),
// which is why we look it up by ID rather than receiving a ref.
export function useTriggerBind(triggerId, handler, eventType = 'click') {
  // Store handler in a ref so the listener always calls the latest version
  // without needing to be re-registered when handler identity changes.
  const handlerRef = useRef(handler);
  handlerRef.current = handler;

  useEffect(() => {
    if (!triggerId) return;

    // Wrap the ref call so we can pass a stable function reference to addEventListener.
    const listener = (e) => handlerRef.current(e);
    let boundEl = null;   // tracks the element we attached to, for cleanup
    let observer = null;  // tracks the MutationObserver, for cleanup
    let warnTimer = null; // fires a console.warn if the element never appears

    const bind = (el) => {
      boundEl = el;
      el.addEventListener(eventType, listener);
    };

    const el = document.getElementById(triggerId);
    if (el) {
      // Element already exists in the DOM — bind immediately.
      bind(el);
    } else {
      // Element not yet in the DOM (e.g. rendered later by Shiny).
      // Watch for DOM changes and bind as soon as it appears.
      warnTimer = setTimeout(() => {
        // eslint-disable-next-line no-console
        console.warn(
          `useTriggerBind: no element with id "${triggerId}" found after 5 s. ` +
          'Check that triggerId matches an existing DOM element id.'
        );
        // Stop watching the DOM: if the element hasn't appeared in 5 s it
        // almost certainly never will (typo'd id), and a live observer on
        // document.body would otherwise run on every mutation for the rest
        // of the component's life.
        if (observer) {
          observer.disconnect();
          observer = null;
        }
      }, 5000);

      observer = new MutationObserver(() => {
        const found = document.getElementById(triggerId);
        if (found) {
          clearTimeout(warnTimer);
          warnTimer = null;
          observer.disconnect(); // stop watching once the element is found
          observer = null;
          bind(found);
        }
      });
      observer.observe(document.body, { childList: true, subtree: true });
    }

    // Cleanup runs when triggerId/eventType change or the component unmounts.
    return () => {
      clearTimeout(warnTimer);
      if (observer) observer.disconnect();
      if (boundEl) boundEl.removeEventListener(eventType, listener);
    };
  }, [triggerId, eventType]);
}
