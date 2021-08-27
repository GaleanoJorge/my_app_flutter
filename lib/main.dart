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
          actions: <Widget>[
            IconButton(onPressed: _add, icon: Icon(Icons.add)),
            IconButton(onPressed: _add, icon: Icon(Icons.remove)),
          ],
          elevation: 50,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(50, 20)),),
          leading: IconButton(onPressed: _add, icon: Icon(Icons.arrow_back)),
        ),
        body: Center(),
      ),
    );
  }

  void _add() {
    print('Holanda');
  }
}
