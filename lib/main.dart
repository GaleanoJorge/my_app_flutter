import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('assets/IMG_1.jpg'),
          Image.asset('assets/IMG_2.jpg'),
          Image.asset('assets/IMG_3.jpg'),
          Image.asset('assets/IMG_4.jpg'),
          Image.asset('assets/IMG_5.jpg'),
        ],
      ),
    );
  }
}
