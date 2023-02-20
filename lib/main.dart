import 'package:flutter/material.dart';
import 'package:flutter_clean/features/splash/presentation/splash_page.dart';

import 'di.dart';


void main() {
  setUp(); // to set get_it dependency injection
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      home: SplashPage(),
    );
  }
}

