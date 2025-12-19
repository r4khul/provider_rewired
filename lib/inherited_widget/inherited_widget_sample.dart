import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  const CounterProvider({
    super.key,
    required this.counter,
    required super.child,
  });
  final int counter;

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(covariant CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }
}
