# ADR 0002: Communication Pattern (Monitor & Units)

**Date:** 2026-03-09  
**Status:** Accepted

## Context
The "Central Monitor" (Singleton) needs to track multiple "Production Units" (Cloneables). Specifically, the Monitor must:
1. Know when a new Unit is started.
2. Receive continuous temperature data from each Unit.
3. Handle Alarms triggered by any Unit.

## Decision
We will implement an **Event-Driven Observer Pattern** using DQMH Broadcasts.

### Instantiation:  
The `Central Monitor` explicitly triggers the creation of a new unit via the `Start Module.vi`. This is a synchronous action that allows for immediate error handling if the module fails to launch (e.g., memory issues or file path errors).

### Implementation Details:
* **Discovery (Active-Trigger, Passive Confirmation):** Although the Monitor triggers the start, it does not manually add the unit to its "Active List" at that moment. Instead, it waits for the unit's `Module Did Start` broadcast. This ensures that only fully initialized and functional units appear in the dashboard.
* **Data Flow:** Each Unit will broadcast its simulated data (`Status Updated`) at a fixed interval.
* **Subscription:** The `Central Monitor` will register for these specific broadcast events from the `Production Unit` class/library.

## Rationale
* **Loose Coupling:** The Production Unit does not need a reference to the Monitor. It simply "shouts" its status.
* **Scalability:** The Monitor can handle 1 or 100 units without any change to its internal messaging logic.
* **Robustness:** If the Monitor is closed and restarted, it can simply "re-listen" to the ongoing broadcasts.

## Alternatives Considered
* **Active Polling (Rejected):** Having the Monitor send Requests to every Unit every 100ms. This would create unnecessary network/processor load and require the Monitor to manage all Unit references strictly.

## Consequences
* **Positive:** Extremely flexible and easy to test with the API Tester.
* **Positive (Error Resilience):** By separating the "Start" command from the "Registration", we can handle two types of errors:  
    1. **Launch Errors:** Handled synchronously by the Monitor's MHL when the button is clicked.
    2. **Initialization Errors:** Handled by the fact that the unit never sends its "Did Start" broadcast if its internal setup fails.
* **Negative:** The Monitor must maintain a dynamic list (array or map) of active Module IDs to keep the UI organized.
