import 'package:flutter/material.dart';
import 'package:todoist_clone/pages/todo_creation_page.dart';
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
          headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)
        ),
        primarySwatch: ColorGenerator.generateMaterialColor(Color(0xffdb4c3f))
        ),
      routes: {
        '/': (ctx) => InboxPage(),
        TodoCreationPage.routeName: (ctx) => TodoCreationPage(),
      },
    );
  }
}

