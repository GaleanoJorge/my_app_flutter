import 'dart:async';

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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = 'Jorge';
  double progressValue = 0.0;
  bool swichValue = false;
  bool isFull = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull Widget'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              this.name,
              style: TextStyle(fontSize: 30),
            ),
            LinearProgressIndicator(
              value: this.progressValue,
            ),
            Switch(
                value: this.swichValue,
                onChanged: (value) {
                  setState(() {
                    this.swichValue = value;
                  });
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: chageName,
      ),
    );
  }

  void chageName() {
    setState(() {
      if (name == 'Jorge') {
        name = 'George';
      } else {
        name = 'Jorge';
      }

      if (progressValue < 1 && !isFull) {
        progressValue += 0.05;
      } else {
        this.isFull = true;
      }

      if (progressValue > 0 && isFull) {
        progressValue -= 0.05;
      } else {
        isFull = false;
      }

      this.swichValue = !swichValue;
    });
  }

  /**Antes de dibujar por prmera vez se ejecuta el método initState */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      chageName();
    });
  }

  /**Cuando el Widget es destruido se ejecuta el método dispose */
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
