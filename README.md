# What's up

A lightweight package to return time-based greetings like "Good morning" or "Good afternoon" from a given datetime.

## Features

- 🌅 Greeting messages based on the hour (Morning, Afternoon, Evening, Night)
- 📅 Convert day numbers to day names
- ⚡ Lightweight and easy to integrate into Flutter apps

## Installation

```yaml
dependencies:
  whatsup: ^latest_version
```

## Usage

Import the package into your Dart file:

```dart
import 'package:flutter/material.dart';
import 'package:whatsup/whatsup.dart';

void main() {
  // Get greeting based on specific hour
  print(Whatsup.now(hour: 5));  // "Good morning"

  // Get greeting without prefix
  print(Whatsup.now(hour: 12, prefix: false)); // "Afternoon"

  // Get day name (1 = Monday, 7 = Sunday)
  print(Whatsup.nameOfDay(day: 1)); // "Monday"

  // Get month name (1 = January, 12 = December)
  print(Whatsup.nameOfMonth(month: 1)); // "January"
}

// Example usage in Flutter Widget
Widget buildGreeting() {
  // Returns greeting message based on current device time
  return Text(Whatsup.now());
}
```
