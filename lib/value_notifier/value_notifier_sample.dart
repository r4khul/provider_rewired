import 'package:flutter/material.dart';

class ValueNotifierSample extends StatelessWidget {
  const ValueNotifierSample({super.key});

  static final ValueNotifier<int> counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          ValueListenableBuilder(
            valueListenable: counter,
            builder: (context, value, child) => Text(value.toString()),
          ),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  counter.value++;
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  counter.value--;
                },
                icon: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
