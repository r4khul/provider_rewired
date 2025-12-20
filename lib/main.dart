import 'package:flutter/material.dart';
import 'package:provider_rewired/screens/home_screen.dart';
import 'package:provider_rewired/screens/home_screen_change_notifier.dart';
import 'package:provider_rewired/value_notifier/value_notifier_sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ValueNotifierSample());
  }
}
