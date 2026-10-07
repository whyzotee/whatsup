// ignore_for_file: avoid_print

import 'package:whatsup/whatsup.dart';

void main() {
  // Get greeting based on specific hour
  print(Whatsup.now(hour: 5)); // "Good morning"

  // Get greeting without prefix
  print(Whatsup.now(hour: 12, prefix: false)); // "Afternoon"

  // Get day name (1 = Monday, 7 = Sunday)
  print(Whatsup.nameOfDay(day: 1)); // "Monday"

  // Get month name (1 = January, 12 = December)
  print(Whatsup.nameOfMonth(month: 1)); // "January"
}
