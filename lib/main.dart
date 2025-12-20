import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_rewired/change_notifier_provider/change_notifier_provider_screen.dart';
import 'package:provider_rewired/change_notifier_provider/counter_provider.dart';
void main() {
  runApp(
    ChangeNotifierProvider(create: (_)=>CounterProvider())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ChangeNotifierProviderScreen());
  }
}
