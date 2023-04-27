import 'package:demo/presentation/home_page.dart';
import 'package:flutter/material.dart';

/// DemoApp - starting point of app
class DemoApp extends StatelessWidget {
  /// Public constructor
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
