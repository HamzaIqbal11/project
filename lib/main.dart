import 'package:flutter/material.dart';
import 'package:mini_app/views/dashboard.dart';
import 'package:mini_app/views/home/home1.dart';
import 'package:mini_app/views/home/home2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Project',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: Dashboard(), // Show splash screen first
      routes: {
        '/home': (context) => MyHomePage(
              title: '',
            ),
        '/home2': (context) => MyHomePage2(
              title: '',
            ),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
