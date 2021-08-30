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
        body: Row(
          children: <Widget>[
            Text('Hola'),
            SizedBox(
              width: 50,
            ),
            Text('Que más!')
          ],
        ),
      ),
    );
  }
}
