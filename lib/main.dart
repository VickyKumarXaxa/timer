import 'package:flutter/material.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: TimerHomePage(),
    );
  }
}

class TimerHomePage extends StatelessWidget {
  const TimerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Work Timer'),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}
