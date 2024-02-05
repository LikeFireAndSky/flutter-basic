import 'package:flufy_flutter/color_button.dart';
import 'package:flutter/material.dart';
import 'switch.dart';
import 'button.dart';

// main 함수
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '플러터 앱이 올시다'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (_counter == 0) {
        _counter = 1;
      }
      _counter *= 2;
    });
  }

  void _decrementCounter() => {
    setState(() {
      if (_counter == 0) {
        _counter = 1;
      }
      _counter *= 2;
    })
  };
  void _resetCounter() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '플러터로 만든 첫 앱이다',
            ),

            const Text(
              '안녕 반가워 귀여운 플러터야 :)', style: TextStyle(color: Colors.blue, fontSize: 50 ), textAlign: TextAlign.center,
            ),

            const Text(
              '아래 버튼은 2번씩 곱해줘 zz',
            ),
            Text(
              '계산값 : $_counter if you want to know',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const MySwitch(switchName: '스위치'),
            const MyButton(buttonName: '버튼'),
            const MyColorButton(buttonName: '컬러버튼'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

