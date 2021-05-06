import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  String _nombre, _edad, _estado;
  @override
  Widget build(context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      //added
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: <Container>[
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              'Examen 2P Spetsnaz',
              style: TextStyle(color: Colors.black, fontSize: 32),
            ),
          ),
          Container(
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Nombre',
                          style:
                              TextStyle(color: Colors.black, fontSize: 24))))),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                onChanged: (txtNombre) {
                  _nombre = txtNombre;
                },
              )),
          Container(
              margin: EdgeInsets.only(top: 30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Edad',
                          style:
                              TextStyle(color: Colors.black, fontSize: 24))))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (txtEdad) {
                _edad = txtEdad;
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Estado',
                          style:
                              TextStyle(color: Colors.black, fontSize: 24))))),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              onChanged: (txtEstado) {
                _estado = txtEstado;
              },
            ),
          ),
          Container(
              margin: const EdgeInsets.only(
                  top: 70, left: 30, right: 30, bottom: 30),
              height: 60,
              child: SizedBox.expand(
                  child: ElevatedButton(
                      onPressed: () {
                        _mostrarAlerta(context);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromARGB(255, 0, 206, 209)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                      child: Text("Ingresar",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontFamily: 'sans-serif-medium'))))),
        ],
      ),
    )));
  }

  _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible:
            false, //indica si puedes cerrar la alerta picando fuera de ella
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: Text(
                'Hola buenas $_nombre, su edad es $_edad y eres de $_estado'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image(
                  image: NetworkImage(
                      'https://www.pngkit.com/png/full/186-1866208_glados-is-a-potato-portal2-attack-on-titan.png'),
                  height: 200,
                )
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/botonesPage');
                },
              )
            ],
          );
        });
  }
}
