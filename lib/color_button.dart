import 'dart:ffi';

import 'package:flutter/material.dart';

class MyColorButton extends StatefulWidget {
  const MyColorButton({Key? key, required this.buttonName}) : super(key: key);

  final String buttonName;

  @override
  State<MyColorButton> createState() => _MyColorButtonState();
}

class _MyColorButtonState extends State<MyColorButton> {
  bool _colorOn = false;

  // 위젯 초기화
  @override
  void initState() {
    super.initState();
    print('init Widget');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  // 함수 선언
  Color _changeColor() => _colorOn ? Colors.blue : Colors.red;

  void _onChanged() {
    setState(() {
      _colorOn = !_colorOn;
    });
    print('업데이트');
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _onChanged,
      style: ElevatedButton.styleFrom(
        backgroundColor: _changeColor(),
      ),
      child: Text(widget.buttonName, style: const TextStyle(color: Colors.white)),
    );
  }
}
