# Definition of Done (DoD)

To ensure high quality and maintainability, a task or issue is only considered "Done" when the following criteria are met:

## 🛠️ Implementation
- [ ] Code follows the DQMH style guide (proper labeling, error handling, and wire routing).
- [ ] No broken wires or sub-VI conflicts in the project.
- [ ] All relevant Typedefs are updated and placed in the `/Libraries` folder.

## 🧪 Testing & Validation
- [ ] The module's **API Tester** is updated with all new Requests and Broadcasts.
- [ ] Unit tests pass (Module logic verified via Tester).
- [ ] Error handling is verified (Module reacts correctly to invalid inputs or timeouts).

## 📝 Documentation
- [ ] All Public API VIs have meaningful icons and descriptions (VI Properties).
- [ ] The **README.md** or **Requirements Specification** is updated if functional changes occurred.
- [ ] Related **ADRs** are finalized and moved to "Accepted" status.

## 🏁 Git & Peer Review
- [ ] Commit messages are descriptive and follow the project's naming convention.
- [ ] The branch is rebased/merged with the latest `main` branch.
- [ ] Pull Request (PR) is reviewed (if applicable) and all comments are addressed.
