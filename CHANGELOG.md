## [1.0.5] - 2026-10-07

### 📚 Documentation

- Added a runnable example in `example/whatsup.dart` showing greetings and day and month names.

## [1.0.4] - 2026-10-07

### 🚜 Refactor

- [**breaking**] `Whatsup` methods are now static. Replace `Whatsup().now()` with `Whatsup.now()`; the same applies to `nameOfDay()` and `nameOfMonth()`.
- [**breaking**] Renamed the `now()` parameter `good` to `prefix`. For example, use `Whatsup.now(hour: 9, prefix: false)` instead of `Whatsup().now(hour: 9, good: false)`.
- [**breaking**] `nameOfDay(day:)` now accepts 1–7 (Monday–Sunday) instead of 0–6; `nameOfMonth(month:)` now accepts 1–12 (January–December) instead of 0–11. Out-of-range values throw `ArgumentError`.
- [**breaking**] Removed the public `hw` constant; the fallback greeting is now stored privately as `_hi` (`Hi!`).

### 🐛 Bug Fixes

- Greetings with the default prefix now use lowercase time-of-day names, such as `Good morning`; greetings without the prefix still return `Morning`, `Afternoon`, `Evening`, or `Night`.
- The night greeting now covers 04:00–04:59 as well as 22:00–03:59.
- Calls without an explicit hour, day, or month use the current local date and time when called.

### 📚 Documentation

- Expanded API documentation and README usage examples.

### 🧪 Testing

- Updated tests for the static API, prefix option, and day and month names.

### ⚙️ Miscellaneous Tasks

- [**breaking**] Raised the minimum Dart SDK version from 3.2.6 to 3.13.5.
- Updated `flutter_lints` to 6.0.0 and refreshed analysis and ignore settings.

## [1.0.3] - 2024-10-02

_Changes reconstructed from commit `be0e0db`; Git has no 1.0.3 version bump or tag._

### 🐛 Bug Fixes

- Fixed the missing space between `Good` and the time of day in greetings returned by `now()`.

## [1.0.2] - 2024-09-30

### 🚜 Refactor

- [**breaking**] Changed `Whatsup` helpers from static methods to instance methods.

### 🚀 Features

- Added the `good` option to `now()` for returning a time-of-day name without `Good`.
- Added optional zero-based day indices to `nameOfDay()`.
- Added `nameOfMonth()` with optional zero-based month indices.

### 🐛 Bug Fixes

- Corrected the default weekday indexing in `nameOfDay()`.

## [1.0.1] - 2024-09-30

### 🚀 Features

- Added `Whatsup.nameOfDay()` to look up English weekday names from the current date.

## [1.0.0] - 2024-02-14

### 🚀 Features

- Initial release with time-based greetings.
