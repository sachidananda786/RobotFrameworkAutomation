<<<<<<< HEAD
# Enterprise UI Automation Framework

Robot Framework + Selenium + Python framework for maintainable web UI automation.

## Why this structure

- `tests/` contains business-facing suites grouped by feature.
- `resources/pageobjects/` contains page objects that expose page actions and validations.
- `resources/locators/` keeps selectors separate from page-object behavior.
- `resources/keywords/` contains cross-page framework keywords.
- `libraries/` contains Python extensions for framework-level behavior.
- `config/` stores environment-specific, non-secret test configuration.
- `results/` is the recommended output directory for local and CI reports.

## Getting started

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
robot --dryrun tests/login/login_tests.robot
robot --include smoke --outputdir results tests
```

The sample suite uses Sauce Demo. Chrome is managed by Selenium Manager, so a compatible Chrome installation is required for a live run.

Select an environment with `TEST_ENV`:

```bash
TEST_ENV=qa robot --include smoke --outputdir results tests
```

## Framework conventions

- Keep test cases readable and business-oriented.
- Keep Selenium interaction inside page objects and expose business actions as keywords.
- Keep selectors in locator resources; page objects must never hardcode selectors.
- Use explicit waits for state changes; avoid sleeps.
- Tag tests by execution purpose, for example `smoke`, `regression`, and `login`.
- Keep credentials and environment values out of source control as the project grows.

## Planned growth

1. Add dashboard, users, and orders page objects and suites.
2. Add data-driven tests sourced from YAML or CSV.
3. Add API setup and database validation utilities.
4. Add retry policy and quarantine handling for known flaky tests.
5. Expand CI with parallel execution and archived Robot reports.
=======
# RobotFrameworkAutomation
Scalable web UI automation framework using Robot Framework, SeleniumLibrary, and Python with reusable keywords, Page Objects, centralized configuration, test tagging, and failure handling.
>>>>>>> origin/main
