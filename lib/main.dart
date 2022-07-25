import 'package:flutter/material.dart';
import 'package:perhitungan_luas_bangun_datar/luas_persegipanjang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menghitung Luas Persegi Panjang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LuasPersegi()
    );
  }
}