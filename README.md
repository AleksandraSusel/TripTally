## Setting Up Git Hooks

This repository uses custom Git hooks stored in the `.githooks` directory. To ensure code formatting, linter fixes,
and running tests before committing and pushing code, configure Git to use this directory for hooks. Run the following:

```sh
git config core.hooksPath .githooks/
```

## Useful scripts:

1. Generate DataSource/Repository/UseCase layers:
   - `file_name` -> Should be the name of the file for all the layers,
     - Example: `user` will generate user_repository, user_repository_impl, user_data_source, user_data_source_impl, user_use_case
   - `name_entity` & `name_dto` -> These are the names of model included in the above files. NOTE: this script does not generate models
```sh
dart scripts/generate_layers.dart file_name name_entity name_dto
```

