import 'package:flutter/material.dart';
import 'package:my_app/pages/second_page.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;
  late TextEditingController lastNameTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso básico de navigator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[

            TextField(
              decoration: InputDecoration(labelText: 'Nombre:'),
              controller: nameTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Apellido:'),
              controller: lastNameTextController,
            ),

            RaisedButton(
              onPressed: () {
                _showSecondPage(context);
              },
              child: Text('Mostrar Segunda Pantalla'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    // final route = MaterialPageRoute(builder: (BuildContext context){
    //   return SecondPage(name: 'Jorge');
    // });
    // Navigator.of(context).push(route);

    Navigator.of(context).pushNamed('/second', arguments: SecondPageArguments(name: nameTextController.text, lastName: lastNameTextController.text));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameTextController = TextEditingController();
    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }
}
