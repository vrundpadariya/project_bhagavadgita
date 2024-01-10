import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/VIEWS/detail page/views/detailpage.dart';
import 'app/VIEWS/homepage/views/homescreen.dart';
import 'app/VIEWS/one_time_intro/views/one_time_intro.dart';
import 'app/VIEWS/splash_screen/views/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isvisited = preferences.getBool("Isvisited") ?? false;
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isvisited) ? '/' : 'intro',
      routes: {
        '/': (ctx) => Splacescreen(),
        'intro': (ctx) => introscreen(),
        'home': (ctx) => homescreen(),
        'detail': (ctx) => detailpage(),
      },
    ),
  );
}
