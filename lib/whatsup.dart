library whatsup;

class Whatsup {
  final DateTime _dt = DateTime.now();

  final String _morning = "Morning";
  final String _afternoon = "Afternoon";
  final String _evening = "Evening";
  final String _night = "Night";
  final String hw = "Hello World!";

  String now({int? hour, bool good = true}) {
    switch (hour ?? _dt.hour) {
      case >= 5 && < 12:
        return good ? "Good $_morning" : _morning;
      case >= 12 && < 18:
        return good ? "Good $_afternoon" : _afternoon;
      case >= 18 && < 22:
        return good ? "Good $_evening" : _evening;
      case >= 22 || < 4:
        return good ? "Good $_night" : _night;
      default:
        return hw;
    }
  }

  String nameOfDay({int? day}) {
    List days = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];

    return days[day ?? (_dt.weekday - 1)];
  }

  String nameOfMonth({int? month}) {
    List months = [
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
      "December"
    ];

    return months[month ?? (_dt.month - 1)];
  }
}
