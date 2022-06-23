import 'package:flutter/material.dart';
import 'package:timer/widgets.dart';

void main() {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final double defaultPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: TimerHomePage(),
    );
  }

  void emptyMethod() {}
}

class TimerHomePage extends StatelessWidget {
  const TimerHomePage({Key? key}) : super(key: key);
  final double defaultPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Work Timer'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                      color: const Color(0xff009688),
                      text: 'Work',
                      size: 10.0,
                      onPressed: () {}),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff607d8b),
                    text: 'Break',
                    size: 10.0,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff455a64),
                    text: "Long Break",
                    size: 10.0,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Expanded(
              child: const Text('Hello'),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff212121),
                    text: 'Stop',
                    size: 10.0,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff009688),
                    text: 'Restart',
                    size: 10.0,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
