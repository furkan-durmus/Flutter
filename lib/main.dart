import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.teal[300],
    child: Center(
      child: Text(
        "Hello  World!",
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.amber, fontSize: 42.0),
      ),
    ),
  ));
}
