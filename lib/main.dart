import '/pages/login.page.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diweine''s Store',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
