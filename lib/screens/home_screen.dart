import 'package:flutter/material.dart';
import 'package:provider_rewired/inherited_widget/inherited_widget_sample.dart';

class HomeScreenInheritedWidget extends StatefulWidget {
  const HomeScreenInheritedWidget({super.key});

  @override
  State<HomeScreenInheritedWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenInheritedWidget> {
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CounterProvider(counter: _number, child: CounterDisplay()),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _number++;
                  });
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _number--;
                  });
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

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(CounterProvider.of(context)!.counter.toString());
  }
}
