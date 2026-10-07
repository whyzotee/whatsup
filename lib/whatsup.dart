/// A utility class for generating time-based greetings and formatting day and month names.
///
/// All methods are static and can be called directly without instantiating the class:
/// ```dart
/// print(Whatsup.now());              // "Good morning" (based on current time)
/// print(Whatsup.nameOfDay());        // "Monday" (based on current weekday)
/// print(Whatsup.nameOfMonth());      // "October" (based on current month)
/// ```
class Whatsup {
  // Private constructor to prevent direct instantiation.
  Whatsup._();

  static const String _morning = "Morning";
  static const String _afternoon = "Afternoon";
  static const String _evening = "Evening";
  static const String _night = "Night";
  static const String _hi = "Hi!";

  static const List<String> _days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  static const List<String> _months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];

  /// Returns a time-based greeting or time-of-day label.
  ///
  /// - [hour]: The hour of the day (0–23). If omitted, defaults to the current local hour.
  /// - [prefix]: Whether to include the `"Good "` prefix. Defaults to `true`.
  ///   - `true`  -> returns `"Good morning"`, `"Good afternoon"`, etc.
  ///   - `false` -> returns `"Morning"`, `"Afternoon"`, etc.
  ///
  /// Examples:
  /// ```dart
  /// Whatsup.now();                         // Current time greeting (e.g. "Good morning")
  /// Whatsup.now(hour: 9);                  // "Good morning"
  /// Whatsup.now(hour: 9, prefix: false);   // "Morning"
  /// ```
  static String now({int? hour, bool prefix = true}) {
    final currentHour = hour ?? DateTime.now().hour;

    switch (hour ?? currentHour) {
      case >= 5 && < 12:
        return prefix ? "Good ${_morning.toLowerCase()}" : _morning;
      case >= 12 && < 18:
        return prefix ? "Good ${_afternoon.toLowerCase()}" : _afternoon;
      case >= 18 && < 22:
        return prefix ? "Good ${_evening.toLowerCase()}" : _evening;
      case >= 22 || < 5:
        return prefix ? "Good ${_night.toLowerCase()}" : _night;
      default:
        return _hi;
    }
  }

  /// Returns the full name of the day corresponding to the given [day] index.
  ///
  /// - [day]: An integer from `1` (Monday) to `7` (Sunday) following the
  ///   `DateTime.weekday` convention. If omitted, defaults to the current weekday.
  ///
  /// Throws an [ArgumentError] if [day] is outside the range 1–7.
  ///
  /// Examples:
  /// ```dart
  /// Whatsup.nameOfDay();        // Current day name (e.g. "Wednesday")
  /// Whatsup.nameOfDay(day: 1);  // "Monday"
  /// ```
  static String nameOfDay({int? day}) {
    final d = day ?? DateTime.now().weekday;

    if (d < 1 || d > 7) {
      throw ArgumentError.value(d, 'day', 'Day must be between 1 and 7.');
    }

    return _days[d - 1];
  }

  /// Returns the full name of the month for the given [month] index.
  ///
  /// - [month]: An integer from `1` (January) to `12` (December) following the
  ///   `DateTime.month` convention. If omitted, defaults to the current month.
  ///
  /// Throws an [ArgumentError] if [month] is outside the range 1–12.
  ///
  /// Examples:
  /// ```dart
  /// Whatsup.nameOfMonth();          // Current month name (e.g. "October")
  /// Whatsup.nameOfMonth(month: 1);  // "January"
  /// ```
  static String nameOfMonth({int? month}) {
    final m = month ?? DateTime.now().month;

    if (m < 1 || m > 12) {
      throw ArgumentError.value(m, 'month', 'Month must be between 1 and 12.');
    }

    return _months[m - 1];
  }
}
