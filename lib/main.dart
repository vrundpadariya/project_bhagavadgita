import 'package:flutter/material.dart';

import 'app/views/homescreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (ctx) => homescreen(),
      },
    ),
  );
}
