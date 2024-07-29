## Setting Up Git Hooks

This repository uses custom Git hooks stored in the `.githooks` directory. To ensure code formatting, linter fixes,
and running tests before committing and pushing code, configure Git to use this directory for hooks. Run the following:

```sh
git config core.hooksPath .githooks/

