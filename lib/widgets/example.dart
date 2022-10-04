import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lesson 2'),
        leading: const Icon(Icons.circle),
        actions: const [
          Icon(Icons.exit_to_app),
          Icon(Icons.add),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.red,
              child: const SizedBox.shrink(),
            ),
          ),
          Text(
            _count.toString(),
            style: const TextStyle(fontSize: 20),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, '/tal', arguments: 20),
            child: const Text('Next'),
          )
        ],
      ),
    );
  }
}
