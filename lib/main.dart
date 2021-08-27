import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Uso del Scaffold'),
        ),
        body: Center(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        drawer: Drawer(),
        endDrawer: Drawer(),
        backgroundColor: Colors.black,
      ),
    );
  }
}
