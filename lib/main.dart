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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: Center(
        child: Column(
          children: [
            ListItem(),
            ListItem(),
            ListItem(),
          ],
        ),
      ),
    );
  }

  /// Antes de dibujar por prmera vez se ejecuta el método initState */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  /// Cuando el Widget es destruido se ejecuta el método dispose */
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //GestureDetector detector sirve paradetectar cualquier tipo de interacción con cualquier tipo de Widget aún si estos por defecto no tinen esta cualidad
    //sin embargo este no muestra dicha interacción en pantalla a diferencia del InkWell el cual tiene las mismas propiedades pero muesta la interacción como si fuera un botón
    return GestureDetector(
        onDoubleTap: _onTab,
        onLongPress: _onLongPress,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.folder),
              SizedBox(
                width: 20,
              ),
              Text(
                'Mis Tareas',
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ));
  }

  void _onTab() {
    print('Hola');
  }

  void _onLongPress() {
    print('Se ha mantenido el click');
  }
}
