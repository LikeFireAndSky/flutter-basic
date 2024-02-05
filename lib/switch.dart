import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key, required this.switchName});

  final String switchName;

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool _value = false;

  void _onChanged() {
    setState(() {
      _value = !_value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      key: Key(widget.switchName),
      activeColor: Colors.blueAccent,
      inactiveThumbColor: Colors.blueGrey,
      inactiveTrackColor: Colors.lightBlue,
      onChanged: (bool value) {
        _onChanged();
      },
    );
  }
}