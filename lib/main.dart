import 'package:flutter/material.dart';
import 'package:effective_flutter_lab/theme.dart';
import 'package:effective_flutter_lab/screens/home_page.dart';

void main() {
  runApp(MaterialApp(
    theme: lightTheme,
    home: const HomePage(),
  ));
}
