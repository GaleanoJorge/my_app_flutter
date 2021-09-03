import 'package:flutter/material.dart';
import 'package:my_app/screems/second_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String nameValue;
  late String lastNameValue;

  late TextEditingController nameController;
  late TextEditingController lastNameController;

  late FocusNode nameFocus;
  late FocusNode lastNameFocus;
  late FocusNode phoneFocus;
  late FocusNode emailFocus;
  late FocusNode ageFocus;
  late FocusNode webSideFocus;

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
                focusNode: this.nameFocus,
                onEditingComplete: ()=> requestFocus(context, lastNameFocus),
                textInputAction: TextInputAction.next,
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
                focusNode: this.lastNameFocus,
                onEditingComplete: ()=> requestFocus(context, emailFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email:'),
                keyboardType: TextInputType.emailAddress,
                focusNode: this.emailFocus,
                onEditingComplete: ()=> requestFocus(context, phoneFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Teléfono:'),
                keyboardType: TextInputType.phone,
                focusNode: this.phoneFocus,
                onEditingComplete: ()=> requestFocus(context, ageFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Edad:'),
                keyboardType: TextInputType.number,
                focusNode: this.ageFocus,
                onEditingComplete: ()=> requestFocus(context, webSideFocus),
                textInputAction: TextInputAction.next,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Web Side:'),
                keyboardType: TextInputType.url,
                focusNode: this.webSideFocus,
                textInputAction: TextInputAction.go,
              ),
              RaisedButton(
                onPressed: () => _showSecondPage(context),
                child: Text('Mostrar Segunda Pantalla'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void requestFocus (BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
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

    nameFocus = FocusNode();
    lastNameFocus = FocusNode();
    phoneFocus = FocusNode();
    emailFocus = FocusNode();
    ageFocus = FocusNode();
    webSideFocus = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();

    nameFocus.dispose();
    lastNameFocus.dispose();
    phoneFocus.dispose();
    emailFocus.dispose();
    ageFocus.dispose();
    webSideFocus.dispose();
  }
}
