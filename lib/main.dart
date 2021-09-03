import 'package:flutter/material.dart';
import 'package:my_app/pages/my_home_page.dart';
import 'package:my_app/pages/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/":(BuildContext context)=> MyHomePage(),
        "/second":(BuildContext context)=> SecondPage(),
      },
    );
  }
}
