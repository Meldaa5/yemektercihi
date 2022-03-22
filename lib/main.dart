import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              'BUGÜN NE YESEM',
              style: TextStyle(color: Colors.black),
            )),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  //const YemekSayfasi({Key? key}) : super(key: key);

  int corbano = 1;

  int yemekno = 1;

  int tatlino = 1;
  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tabuksuyu',
    'düğün çorbası',
    'yoğurt çorbası'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void yemekleriyenile() {
    setState(() {
      corbano = Random().nextInt(5) + 1;
      yemekno = Random().nextInt(5) + 1;
      tatlino = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.red[900],
                ),

                //verlayColor: MaterialStateColor.resolveWith((states) => Colors.red)
                // splashColor: Colors.black87,
                onPressed: yemekleriyenile,
                child: Image.asset('assets/corba_$corbano.jpg')),
          )),
          Text(
            corbaAdlari[corbano - 1],
            //'Mercimek çorbası',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(height: 5, color: Colors.pink),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: yemekleriyenile,
                child: Image.asset('assets/yemek_$yemekno.jpg')),
          )),
          Text(
            yemekAdlari[yemekno - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.pink,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: yemekleriyenile,
                  child: Image.asset('assets/tatli_$tatlino.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatlino - 1],
            style: TextStyle(fontSize: 20),
          ),
          /* Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.pink,
            ),
          ), */
        ],
      ),
    );
  }
}
