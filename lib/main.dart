import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(fontFamily: 'Pacifico'),
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
        title: Text('Uso de Fonts'),
      ),
      body: ListView(
        children: <Widget>[
          Text(
            '''Lorem ipsum dolor sit amet consectetur adipiscing elit nulla at aenean tempus, id porttitor tincidunt felis dignissim tortor vivamus sodales odio semper. Turpis vivamus dictumst proin nascetur augue consequat convallis sociosqu in, commodo conubia phasellus ornare malesuada nisi tellus penatibus, non platea tortor aenean interdum sapien habitasse eu. Viverra vivamus bibendum urna maecenas cum montes fermentum luctus suscipit proin hac, curabitur facilisis augue penatibus fames mus massa sodales metus taciti, porta ullamcorper nulla nec mattis eleifend laoreet dictum nibh inceptos.

Lectus torquent tellus velit aliquet eleifend vel iaculis integer natoque auctor tristique, pretium odio conubia ultrices faucibus inceptos nunc facilisis mollis per. Porta magna dapibus ligula in dictumst vulputate tellus varius proin ut aliquam dignissim ultricies, neque velit dui commodo risus sodales tincidunt leo mauris condimentum natoque. Aenean nullam integer porttitor libero magnis quis, rutrum eros phasellus potenti nam convallis auctor, curae inceptos viverra vestibulum himenaeos.''',
            style: TextStyle(fontFamily: 'IndieFlower'),
          ),
          Text('''Lorem ipsum dolor sit amet consectetur adipiscing elit nulla at aenean tempus, id porttitor tincidunt felis dignissim tortor vivamus sodales odio semper. Turpis vivamus dictumst proin nascetur augue consequat convallis sociosqu in, commodo conubia phasellus ornare malesuada nisi tellus penatibus, non platea tortor aenean interdum sapien habitasse eu. Viverra vivamus bibendum urna maecenas cum montes fermentum luctus suscipit proin hac, curabitur facilisis augue penatibus fames mus massa sodales metus taciti, porta ullamcorper nulla nec mattis eleifend laoreet dictum nibh inceptos.

Lectus torquent tellus velit aliquet eleifend vel iaculis integer natoque auctor tristique, pretium odio conubia ultrices faucibus inceptos nunc facilisis mollis per. Porta magna dapibus ligula in dictumst vulputate tellus varius proin ut aliquam dignissim ultricies, neque velit dui commodo risus sodales tincidunt leo mauris condimentum natoque. Aenean nullam integer porttitor libero magnis quis, rutrum eros phasellus potenti nam convallis auctor, curae inceptos viverra vestibulum himenaeos.''',
            style: TextStyle(fontFamily: 'Pacifico'),),
        ],
      ),
    );
  }
}
