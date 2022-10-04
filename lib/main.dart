import 'package:flutter/material.dart';
import 'package:nurjigit_lesson_2/widgets/example.dart';
import 'package:nurjigit_lesson_2/widgets/example_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/nur': (_) => const Example(),
        '/tal': (_) => const Example2(),
      },
      initialRoute: '/tal',
    );
  }
}
