import { useEffect, useRef } from 'react';

// Attaches a click handler to a DOM element identified by triggerId.
// The element may live outside the React tree (e.g. a plain Shiny actionButton),
// which is why we look it up by ID rather than receiving a ref.
export function useTriggerBind(triggerId, handler) {
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

    const bind = (el) => {
      boundEl = el;
      el.addEventListener('click', listener);
    };

    const el = document.getElementById(triggerId);
    if (el) {
      // Element already exists in the DOM — bind immediately.
      bind(el);
    } else {
      // Element not yet in the DOM (e.g. rendered later by Shiny).
      // Watch for DOM changes and bind as soon as it appears.
      observer = new MutationObserver(() => {
        const found = document.getElementById(triggerId);
        if (found) {
          observer.disconnect(); // stop watching once the element is found
          observer = null;
          bind(found);
        }
      });
      observer.observe(document.body, { childList: true, subtree: true });
    }

    // Cleanup runs when triggerId changes or the component unmounts.
    return () => {
      if (observer) observer.disconnect();
      if (boundEl) boundEl.removeEventListener('click', listener);
    };
  }, [triggerId]); // re-run only when the target element ID changes
}
