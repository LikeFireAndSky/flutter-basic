import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key, required this.buttonName}) : super(key: key);

  final String buttonName;

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter == 0) {
        _counter = 1;
      }
      _counter += 2;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter == 0) {
        _counter = 1;
      }
      _counter -= 2;
    });
  }

  void _resetCounter() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Increment'),
        ),
        ElevatedButton(
          onPressed: _decrementCounter,
          child: const Text('Decrement'),
        ),
        ElevatedButton(
          onPressed: _resetCounter,
          child: const Text('Reset'),
        ),
          ],
        ),
      ],
    );
  }
}
