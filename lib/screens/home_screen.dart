import 'package:flutter/material.dart';
import 'package:provider_rewired/inherited_widget/inherited_widget_sample.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CounterProvider(
            counter: _number,
            child: Text(CounterProvider.of(context)!.counter.toString()),
          ),
          SizedBox(height: 14),
          Row(
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
