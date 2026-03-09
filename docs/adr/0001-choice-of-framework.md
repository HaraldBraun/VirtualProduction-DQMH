# ADR 0001: Choice of Framework

**Date:** 2026-03-09  
**Status:** Accepted

## Context
The "Virtual Factory" requires an architecture that supports both, singleton services and multiple hardware instances.

## Decision
We will use the **Delacor Queued Message Handler (DQMH)**.

## Rationale
* **Scalability:** Native support for "Cloneable Modules" fulfills FR-02.
* **Decoupling:** Requests and Broadcasts prevent circular dependencies.
* **Standardization:** DQMH is a recognized industry standard for robust LabVIEW applications.

## Consequences
* **Positive:** High modularity and built-in unit testing capabilites.
* **Negative:** Initial learning curve regarding the DQMH scripting tools.
