import 'dart:math';

import 'package:flutter/material.dart';

class BotonCPage extends StatefulWidget {
  @override
  createState() {
    return BotonCPageState();
  }
}

class BotonCPageState extends State<BotonCPage> {
  int _n1, _n2, _nRandom = 0;
  @override
  Widget build(context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      //added
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: <Container>[
          Container(
              margin: EdgeInsets.only(top: 30, bottom: 15),
              child: Text('Números Aleatorios',
                  style: TextStyle(color: Colors.black, fontSize: 32))),
          Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                          'Un número aleatorio es un resultado de una combinación variable al azar especificada por una función de distribución.',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                          textAlign: TextAlign.justify)))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                decoration: InputDecoration(hintText: 'Número 1'),
                keyboardType: TextInputType.number,
                onChanged: (txtN1) {
                  _n1 = int.parse(txtN1);
                },
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: TextField(
                  decoration: InputDecoration(hintText: 'Número 2'),
                  keyboardType: TextInputType.number,
                  onChanged: (txtN2) {
                    _n2 = int.parse(txtN2);
                  })),
          Container(
              margin: EdgeInsets.only(top: 40, bottom: 30),
              child: Text('Número Aleatorio: $_nRandom',
                  style: TextStyle(color: Colors.black, fontSize: 24))),
          Container(
              margin: const EdgeInsets.only(
                  top: 30, left: 30, right: 30, bottom: 30),
              height: 60,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _nRandom = _n1 + Random().nextInt(_n2 - _n1);
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 206, 209)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                      child: Text("Generar",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontFamily: 'sans-serif-medium'))))),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              height: 60,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                          shadowColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                      child: Text("Regresar",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 0, 206, 209),
                              fontFamily: 'sans-serif-medium')))))
        ],
      ),
    )));
  }
}
