import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  FlutterError.onError = (details) {
    if (details.stack == null) {
      print('The details stack trace IS null.');
      print(details.stack);
    } else {
      print('The details stack trace was not null.');
      print(details.stack);
    }
    Zone.current.handleUncaughtError(details.exception, details.stack);
  };
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(color: Colors.red, height: 20000.0,),
          ],
        ),
      ),
    );
  }
}
