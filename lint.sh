dart analyze
dart run dart_code_metrics:metrics analyze lib test --fatal-warnings --fatal-performance --fatal-style
dart run dart_code_metrics:metrics check-unused-files lib test --fatal-unused
dart run dart_code_metrics:metrics check-unused-l10n lib test --fatal-unused