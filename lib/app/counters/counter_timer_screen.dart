import 'dart:async';

import 'package:flutter/material.dart';

// * Para experimentar el life cycle de un Widget

class CounterTimerScreen extends StatefulWidget {
  const CounterTimerScreen({super.key});

  /// App Route is: `/counter/index`
  static const String route = '/counter/timer';

  @override
  State<CounterTimerScreen> createState() => _CounterTimerScreenState();
}

class _CounterTimerScreenState extends State<CounterTimerScreen> {
  int _counter = 0;
  Timer? _timer;

  void _toggleTimer() {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    } else {
      _timer = Timer.periodic(Duration(seconds: 1), (ts) {
        _counter = ts.tick;
        print(_counter);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Contador con Timer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have waited $_counter seconds'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleTimer,
        tooltip: 'Conteo',
        child: Icon(_timer?.isActive ?? false ? Icons.alarm_off : Icons.alarm),
      ),
    );
  }
}
