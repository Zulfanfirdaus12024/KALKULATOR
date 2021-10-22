import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double value1;
  double value2;
  String hasilluas = "NULL";
  String hasilkeliling = "NULL";
  void hitunglingkaran() {
    if (value1 == null) {
      hasilluas = "diameter di isi";
      hasilkeliling = "diameter di isi";
    } else {
      hasilluas = "LUAS LINGKARAN : " +
          (((value1 * 1 / 2) * (value1 * 1 / 2)) * 22 / 7).toString();
      hasilkeliling =
          "KELILING LINGKARAN : " + ((value1 * 1 / 2) * 2 * 22 / 7).toString();
    }
  }

  void hitungpersegi() {
    if (value1 == null) {
      hasilluas = "harap text di isi";
      hasilkeliling = "harap tex di isi";
    } else if (value2 == null) {
      hasilluas = "harap text di isi";
      hasilkeliling = "harap tex di isi";
    } else {
      hasilluas = "LUAS PERSEGI : " + (value1 * value2).toString();
      hasilkeliling = "KELILING PERSEGI : " +
          (value1 + value1 + value2 + value2).toString();
    }
  }

  void hitungsegitiga() {
    if (value1 == null) {
      hasilluas = "harap text di isi";
      hasilkeliling = "harap tex di isi";
    } else if (value2 == null) {
      hasilluas = "harap text di isi";
      hasilkeliling = "harap tex di isi";
    } else {
      hasilluas = "LUAS SEGITIGA : " + ((value1 * value2) * 1 / 2).toString();
      hasilkeliling = "KELILING SEGITIGA : " +
          (value2 + value1 + sqrt(value2 * value2 + (value1 * value1)))
              .toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("KALKULATOR BANGUN DATAR"),
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration:
                      InputDecoration(hintText: "PANJANG/ALAS/DIAMATER"),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    value1 = double.parse(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(hintText: "LEBAR TINGGI"),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    value2 = double.parse(value);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          hitunglingkaran();
                          setState(() {});
                        },
                        child: Text("LINGKARAN")),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hitungpersegi();
                          setState(() {});
                        },
                        child: Text("PERSEGI")),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          hitungsegitiga();
                          setState(() {});
                        },
                        child: Text("SEGITIGA"))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(hasilluas),
                  SizedBox(
                    width: 20,
                  ),
                  Text(hasilkeliling)
                ])
              ],
            )
          ],
        ),
      ),
    );
  }
}
