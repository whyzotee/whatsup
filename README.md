## Features

TODO: Simply to hello from time by call function Whatsup.now()

## Usage

TODO: Import package to dart file 'package:whatsup/whatsup.dart';

```dart
import 'package:whatsup/whatsup.dart'; // <--- import package
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(Whatsup.now()),// <--- Call now function then return good time text like moning, afternoom
        ),
      ),
    );
  }
}
```
