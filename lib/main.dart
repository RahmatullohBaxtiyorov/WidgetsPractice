import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets Practice'),
        ),
        body: Center(
          child: WidgetTree(),
        ),
      ),
    );
  }
}

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GreetingWidget(greetingMessage: 'Hello, Professor!', fontSize: 18.0),
        CounterWidget(),
      ],
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  final Color textColor;

  TitleWidget({required this.title, this.textColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}

class GreetingWidget extends StatelessWidget {
  final String greetingMessage;
  final double fontSize;

  GreetingWidget({required this.greetingMessage, this.fontSize = 20.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        greetingMessage,
        style: TextStyle(
          fontSize: 52,
          fontWeight: FontWeight.bold,
          color: Colors.green,
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            'Counter:',
            style: TextStyle(fontSize: 20.0, color: Colors.red),
          ),
          Text(
            '$counter',
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(height: 10.0),
          FloatingActionButton(
            onPressed: incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}

