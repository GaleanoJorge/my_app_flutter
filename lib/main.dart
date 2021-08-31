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

  List<String> names = [
    'Jorge',
    'Nathaly',
    'Jim',
    'Andres',
    'Stefanny',
    'Jorge',
    'Nathaly',
    'Jim',
    'Andres',
    'Stefanny',
    'Jorge',
    'Nathaly',
    'Jim',
    'Andres',
    'Stefanny'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Uso del AppBar'),
        ),
        body: ListView.builder(
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              final name = names[index];
              return Card(
                child: ListTile(
                  title: Text(name),
                  leading: Icon(Icons.person),
                  onTap: (){
                    print(name);
                  },
                ),
              );
            }),
      ),
    );
  }
}
