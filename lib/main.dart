import 'package:flutter/material.dart';
import './pages/inbox_page.dart';
import './utility/color_generator.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          title: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
        ),
        primarySwatch: ColorGenerator.generateMaterialColor(Color(0xdb4c3f))),
      routes: {
        '/': (ctx) => InboxPage(),
      },
    );
  }
}

