import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('1'),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
            ],
          ),
        ],
      ),
    );
  }
}
