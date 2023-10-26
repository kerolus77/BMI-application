import 'package:flutter/material.dart';
import 'package:task_5/splash.dart';




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
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
        // ignore: deprecated_member_use
        headline2:  TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 245, 151, 166),
          ),
          // ignore: deprecated_member_use
          headline1: TextStyle(

            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 0, 0)
          ),
          // ignore: deprecated_member_use
          headline3: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w500
          )
       ),
       iconTheme: const IconThemeData(color: Colors.black),
      ),
      home: const SplashPage(),
    );
  }
}

