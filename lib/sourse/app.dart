import 'package:flutter/material.dart';
import 'package:my_app/screems/second_page.dart';
import 'package:my_app/sourse/screems/my_home_page.dart';

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