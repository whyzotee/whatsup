## 1.0.4

### Breaking changes

- `Whatsup` methods are now static. Replace `Whatsup().now()` with `Whatsup.now()`; the same applies to `nameOfDay()` and `nameOfMonth()`.
- Renamed the `now()` parameter `good` to `prefix`. For example, use `Whatsup.now(hour: 9, prefix: false)` instead of `Whatsup().now(hour: 9, good: false)`.
- `nameOfDay(day:)` now accepts 1–7 (Monday–Sunday) instead of 0–6; `nameOfMonth(month:)` now accepts 1–12 (January–December) instead of 0–11. Out-of-range values throw `ArgumentError`.
- Removed the public `hw` constant; the fallback greeting is now stored privately as `_hi` (`Hi!`).
- Raised the minimum Dart SDK version from 3.2.6 to 3.13.5.

### Changed

- Greetings with the default prefix now use lowercase time-of-day names, such as `Good morning`; greetings without the prefix still return `Morning`, `Afternoon`, `Evening`, or `Night`.
- The night greeting now covers 04:00–04:59 as well as 22:00–03:59.
- Calls without an explicit hour, day, or month use the current local date and time when called.

### Documentation and maintenance

- Expanded API documentation, README usage examples, and tests.
- Updated `flutter_lints` to 6.0.0 and refreshed analysis and ignore settings.

## 1.0.3

_Inferred from commit `be0e0db`; Git has no 1.0.3 version bump or tag._

- Fixed the missing space between `Good` and the time of day in greetings returned by `now()`.

## 1.0.2

- Changed `Whatsup` helpers from static methods to instance methods.
- Added the `good` option to `now()` for returning a time-of-day name without `Good`.
- Added optional zero-based day indices to `nameOfDay()` and corrected its default weekday indexing.
- Added `nameOfMonth()` with optional zero-based month indices.

## 1.0.1

- Added `Whatsup.nameOfDay()` to look up English weekday names from the current date.

## 1.0.0

- Initial release with time-based greetings.
