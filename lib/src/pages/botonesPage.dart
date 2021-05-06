import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(context) {
    return (Scaffold(
        body: Padding(
      //added
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: <Container>[
          Container(
              margin: const EdgeInsets.only(top: 50, bottom: 30),
              height: 120,
              width: 120,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/botonAPage');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 206, 209)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                      child: Text("A",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontFamily: 'sans-serif-medium'))))),
          Container(
              margin: const EdgeInsets.only(bottom: 30),
              height: 120,
              width: 120,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/botonBPage');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 206, 209)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                      child: Text("B",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontFamily: 'sans-serif-medium'))))),
          Container(
              margin: const EdgeInsets.only(bottom: 50),
              height: 120,
              width: 120,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/botonCPage');
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 206, 209)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                      child: Text("C",
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontFamily: 'sans-serif-medium'))))),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              height: 60,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        while (Navigator.of(context).canPop()) {
                          // Navigator.canPop return true if can pop
                          Navigator.of(context).pop();
                        }
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
                      child: Text("Salir",
                          style: TextStyle(
                              fontSize: 22,
                              color: Color.fromARGB(255, 0, 206, 209),
                              fontFamily: 'sans-serif-medium')))))
        ],
      ),
    )));
  }
}
