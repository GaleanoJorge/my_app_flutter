import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Uso del AppBar'),
        ),
        body: Center(
          child: Container(
            // color: Colors.blue[900],
            // color: Color(0xff1DD1FE).withOpacity(0.5), // para definir un color mediante HEX se debe iniciar con 0xff (lo cual es el valor de opacidad en HEX) {HEX (sin el #)}
            color: Color.fromRGBO(29, 209, 254, 0.8),
            height: 300,
            width: 300,
          ),
        )
      ),
    );
  }
}
