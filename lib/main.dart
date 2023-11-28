import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: returnMainTheme(),
      home: const Scaffold(
        body: Text(
        "Hello World!",
        style: TextStyle(
          fontFamily: 'SF_Pro_Text',
          fontWeight: FontWeight.w500,
          fontSize: 48,
        ),
      ),
      )
    );
  }
}
