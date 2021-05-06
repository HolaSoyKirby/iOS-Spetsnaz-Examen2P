import 'package:flutter/material.dart';

class BotonBPage extends StatefulWidget {
  @override
  createState() {
    return BotonBPageState();
  }
}

class BotonBPageState extends State<BotonBPage> {
  String _nombre = '', _nombreOrdenado = '';
  @override
  Widget build(context) {
    return (Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      //added
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: <Container>[
          Container(
              margin: EdgeInsets.only(top: 60, bottom: 15),
              child: Text('Ingresa Tu Nombre',
                  style: TextStyle(color: Colors.black, fontSize: 32))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: TextField(
                decoration: InputDecoration(hintText: 'Nombre'),
                onChanged: (txtNombre) {
                  _nombre = txtNombre;
                },
              )),
          Container(
              margin: EdgeInsets.only(top: 40, bottom: 30),
              child: Text('Nombre Ordenado: ',
                  style: TextStyle(color: Colors.black, fontSize: 24))),
          Container(
              margin: EdgeInsets.only(top: 20, bottom: 60),
              child: Text('$_nombreOrdenado',
                  style: TextStyle(color: Colors.black, fontSize: 24))),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 50),
              height: 60,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        var arr = _nombre.toLowerCase().split('');
                        arr.sort();
                        setState(() {
                          _nombreOrdenado = arr.toString();
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
                      child: Text("Ordenar Alfabéticamente",
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
    ))));
  }
}
