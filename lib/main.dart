import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.green),
      home: Sayac(isim: "Bardak"),
    );
  }
}

class Sayac extends StatefulWidget {
  final String isim;
  Sayac({this.isim});
  @override
  _SayacState createState() => _SayacState();
}

class _SayacState extends State<Sayac> {
  int sayi = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("${widget.isim} sayısı : $sayi"),
      floatingActionButton: FloatingActionButton(
          onPressed:
              sayiarttir), //   bu kısımda () a sağ tıkladık, refactor dedik, extract metot ile verdiğimiz isimde bir metot oluşturdu. ilk hali anonim fonksiyon içindeydi. onPressed (){sayiarttir();} da olurdu,onPressed ()=>sayiarttir()   da olur
    );
  }

  void sayiarttir() {
    print("Butona Basıldı(debug consolda yazdırır.)");
    setState(() {
      //setstate den önce de sayi ++ yazsak çalışırdı. Önemli olan setstate ile builde değişikliği haber vermek.
      sayi++;
      print(sayi);
    });
  }
}
