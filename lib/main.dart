import 'package:flutter/material.dart';
import 'package:flutter_gupy_jobapp/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Flutter - Job App',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
