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
        body: SizedBox(
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(child: Text('Activar sonido')),
                  Icon(
                    Icons.android,
                    size: 60,
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Expanded(child: Text('Habilitar el uso de la cámara')),
                  Icon(
                    Icons.android,
                    size: 60,
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {},
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 100,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
