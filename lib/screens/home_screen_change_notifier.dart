import 'package:flutter/material.dart';
import 'package:provider_rewired/change_notifier/change_notifier_sample.dart';

class HomeScreenChangeNotifier extends StatelessWidget {
  const HomeScreenChangeNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    Counter counter = Counter();
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListenableBuilder(
              listenable: counter,
              builder: (context, child) => Text(counter.counter.toString()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    counter.increment();
                  },
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
