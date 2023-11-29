import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: returnMainTheme(),
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello World!", style: Theme.of(context).textTheme.titleLarge),
    );
  }
}
