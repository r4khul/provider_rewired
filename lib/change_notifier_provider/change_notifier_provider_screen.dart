import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_rewired/change_notifier_provider/counter_provider.dart';

class ChangeNotifierProviderScreen extends StatelessWidget {
  const ChangeNotifierProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<CounterProvider>(
            builder: (context, value, child) {
              return Text(value.toString());
            },
          ),
          TextButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            child: Text('Increment'),
          ),
          TextButton(
            onPressed: () {
              context.read<CounterProvider>().increment();
            },
            child: Text('Decrement'),
          ),
        ],
      ),
    );
  }
}
