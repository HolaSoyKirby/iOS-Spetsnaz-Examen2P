import 'package:flutter/material.dart';
import 'dart:math';

class BotonAPage extends StatefulWidget {
  @override
  createState() {
    return BotonAPageState();
  }
}

class BotonAPageState extends State<BotonAPage> {
  double _a, _b, _c, _x1 = 0, _x2 = 0;
  @override
  Widget build(context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                //added
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Column(children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 30, bottom: 15),
                      child: Text('Ecuacion Cuadratica',
                          style: TextStyle(color: Colors.black, fontSize: 32))),
                  Container(
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Una función cuadrática, es una función polinómica en la que el término de grado más alto es de segundo grado.',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                textAlign: TextAlign.justify,
                              )))),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: 'ax²'),
                      onChanged: (txtA) {
                        _a = double.parse(txtA);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: 'bx'),
                      onChanged: (txtB) {
                        _b = double.parse(txtB);
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: 'c'),
                      onChanged: (txtC) {
                        _c = double.parse(txtC);
                      },
                    ),
                  ),
                  Container(
                      child: Text('X1: $_x1',
                          style: TextStyle(color: Colors.black, fontSize: 24))),
                  Container(
                      child: Text('X2: $_x2',
                          style: TextStyle(color: Colors.black, fontSize: 24))),
                  Container(
                      child: Container(
                          margin: const EdgeInsets.only(
                              left: 30, right: 30, bottom: 30, top: 30),
                          height: 60,
                          child: SizedBox.expand(
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      _x1 = (-_b +
                                              sqrt((_b * _b) - (4 * _a * _c))) /
                                          (2 * _a);
                                      _x2 = (-_b -
                                              sqrt((_b * _b) - (4 * _a * _c))) /
                                          (2 * _a);
                                    });
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color.fromARGB(255, 0, 206, 209)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  child: Text("Calcular",
                                      style: TextStyle(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontFamily: 'sans-serif-medium')))))),
                  Container(
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 30),
                      height: 60,
                      child: SizedBox.expand(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ButtonStyle(
                                  shadowColor: MaterialStateProperty.all<Color>(
                                      Colors.black),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                              child: Text("Regresar",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 0, 206, 209),
                                      fontFamily: 'sans-serif-medium'))))),
                ]))));
  }
}
