import 'package:flutter/material.dart';
import 'package:my_app/pages/second_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String nameValue;
  late String lastNameValue;

  late TextEditingController nameController;
  late TextEditingController lastNameController;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uso básico de navigator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nombre:'),
                onSaved: (value) {
                  nameValue = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Llene este campo';
                  }
                },
              ),
              TextFormField(
                controller: lastNameController,
                decoration: InputDecoration(labelText: 'Apellido:'),
                onSaved: (value) {
                  lastNameValue = value!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Llene este campo';
                  }
                },
              ),
              RaisedButton(
                onPressed: () {
                  _showSecondPage(context);
                },
                child: Text('Mostrar Segunda Pantalla'),
              ),
              Container(
                height: 1000,
                width: 20,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }

    Navigator.of(context).pushNamed('/second',
        arguments: SecondPageArguments(
            name: this.nameValue, lastName: this.lastNameValue));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController();
    lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();
  }
}
