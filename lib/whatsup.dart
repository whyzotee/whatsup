library whatsup;

class Whatsup {
  static String morning() => "Good morning";
  static String afternoon() => "Good afternoon";
  static String evening() => "Good evening";
  static String night() => "Good night";
  static String hw() => "Hello World!";
  static DateTime dateTime() => DateTime.now();

  static String now({int? hour}) {
    final now = dateTime();

    switch (hour ?? now.hour) {
      case >= 5 && < 12:
        return morning();
      case >= 12 && < 18:
        return afternoon();
      case >= 18 && < 22:
        return evening();
      case >= 22 || < 4:
        return night();
      default:
        return hw();
    }
  }
}
