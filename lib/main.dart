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
        body: Column(
          children: [
            kimlik(
              isim: "Furkan",
              soyad: "Durmuş",
              yas: 25,
            ),
            kimlik(
              isim: "Ferit",
              soyad: "Durmuş",
              yas: 32,
            )
          ],
        ),
      ),
    );
  }
}

class kimlik extends StatelessWidget {
  final String isim;
  final String soyad;
  final int yas;
  kimlik({this.isim, this.soyad, this.yas});

  @override
  Widget build(BuildContext context) {
    return Text("İsim : $isim Soyad : $soyad  Yas : $yas");
  }
}
