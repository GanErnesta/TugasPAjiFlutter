import 'package:flutter/material.dart';

class LuasPersegi extends StatefulWidget {
  const LuasPersegi({Key? key}) : super(key: key);

  @override
  State<LuasPersegi> createState() => _LuasPersegiState();
}

class _LuasPersegiState extends State<LuasPersegi> {
  TextEditingController panjang = TextEditingController();
  TextEditingController lebar = TextEditingController();
  TextEditingController luas = TextEditingController();
  var tmpArray = [];

  void luaspersegi() {
    setState(() {
      double _panjang = double.parse(this.panjang.text);
      double _lebar = double.parse(this.lebar.text);
      double _luas = 0;

      _luas = _panjang * _lebar;

      this.luas.text = _luas.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Persegi Panjang"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("Menghitung Luas Persegi Panjang"),

              Padding(
                padding: EdgeInsets.only(top: 12.0),
                ),
              TextField(
                controller: panjang,
                decoration: InputDecoration(
                  labelText: "Input Panjang",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                ),
                keyboardType: TextInputType.number,
              ),

              Padding(
                padding: EdgeInsets.only(top: 12.0),
                ),

               TextField(
                controller: lebar,
                decoration: InputDecoration(
                  labelText: "Input Lebar",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                ),
                keyboardType: TextInputType.number,
              ),

              Padding(
                padding: EdgeInsets.only(top: 12.0),
                ),

              RaisedButton(
                child: Text("Hasil"),
                onPressed:   (){
                  luaspersegi();
                  },
              ),

              Padding(
                padding: EdgeInsets.only(top: 12.0),
                ),

               TextField(
                controller: luas,
                decoration: InputDecoration(
                  labelText: "Input Lebar",
                  labelStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
                ),
                keyboardType: TextInputType.number,
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
