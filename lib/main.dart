import 'package:flutter/material.dart';
import 'package:timer/widgets.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        final double availableWidth = constraints.maxWidth;
        return Column(
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
              child: CircularPercentIndicator(
                radius: availableWidth / 2,
                lineWidth: 10.0,
                percent: 1,
                center: Text(
                  '30:00',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                progressColor: const Color(0xff009688),
              ),
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
        );
      }),
    );
  }
}
