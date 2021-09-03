import 'package:flutter/material.dart';
import 'package:my_app/pages/second_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso básico de navigator'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _showSecondPage(context);
          },
          child: Text('Mostrar Segunda Pantalla'),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    // final route = MaterialPageRoute(builder: (BuildContext context){
    //   return SecondPage(name: 'Jorge');
    // });
    // Navigator.of(context).push(route);

    Navigator.of(context).pushNamed('/second', arguments: SecondPageArguments(name: 'Jorge', lastName: 'Galeano'));
  }
}
