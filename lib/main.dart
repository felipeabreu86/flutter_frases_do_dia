import 'package:flutter/material.dart';

void main() {
  var _titulo = "Frases do dia";

  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: _titulo,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Teste"),
    );
  }
}
