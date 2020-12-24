import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(child: yazi("AnaSayfa")),
      ),
    );
  }
}

class yazi extends StatelessWidget {
  final String icerik;
  yazi(this.icerik);

  @override
  Widget build(BuildContext context) {
    return Text(icerik);
  }
}
