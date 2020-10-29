import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Counter(),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${count}',
              style: TextStyle(fontSize: 24),
            ),
            RaisedButton(
                child: Text(
                  'add',
                  style: TextStyle(fontSize: 16),
                ),
                onPressed: () {
                  setState(() {
                    count++;
                  });
                }
                ),
          ],
        ),
      ),
    );
  }
}
