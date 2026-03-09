# Requirements specification: Virtual Factory (DQMH Demo)

## 1. Project Objective
To demonstrate a scalable, modular control architecture using DQMH. The system simulates a factory floor with multiple production units monitored by a central dashboard.

## 2. Functional Requirements (FR)
* **FR-01: Centralized Monitoring:** A "Central Monitor" (Singleton) shall display the status and live data of all active units.
* **FR-02: Dynamic Instantiation:** The user shall be able to spawn new "Production Units" (Cloneables) at runtime.
* **FR-03: Sensor Simulation:** Each unit shall simulate temperature data using a sine wave function: $$T(t) = T_{base} + A \cdot \sin(\omega t) + \text{noise}$$
* **FR-04: Alarm Handling:** Units must broadcast an "Alarm event" if the simulated temperature exceeds $80°C$
* **FR-05: Error Notification:** If a Production Unit fails to initialize, the Central Monitor shall display an error message to the user.

## 3. Non-Functional Requirements (NFR)
* **NFR-01: Modular Design:** Modules must be loosely coupled using the DQMH event-driven pattern.
* **NFR-02: Unit Testability:** Each module must include an API Tester for isolated verification.

