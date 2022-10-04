import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    final count = ModalRoute.of(context)!.settings.arguments ?? 'fdfd';

    return Scaffold(
      appBar: AppBar(title: Text(count.toString())),
      body: Container(
        color: Colors.red,
        height: 200,
        width: 200,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/nur');
          },
          child: const Text(
            'Go',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
