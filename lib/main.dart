import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

/// Funcao principal que inicializa o aplicativo
void main() {
  runApp(new MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

/// Classe Home Stateful
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

/// Classe que gerencia o estado e os elementos da tela
class _HomeState extends State<Home> {
  // Declaracao de Variaveis
  var _titulo = "Frases do dia";
  var _textoBotao = "Gerar Frase";
  var _fraseRandomica = "Clique no botão abaixo para gerar uma nova frase!";
  var _frases = [
    "Que o dia comece bem e termine ainda melhor.",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Que os dias ruins se tornem raros e os bons virem rotina.",
    "Seja a mudança que você deseja ver no mundo.",
    "A mudança que você quer está na decisão que você toma.",
  ];

  // Metodo que atualiza a frase em tela apos o clique no botão
  void _getFrases() {
    var _numeroRandomico = Random().nextInt(_frases.length);
    setState(() {
      _fraseRandomica = _frases[_numeroRandomico];
    });
  }

  // Construcao dos elementos da tela
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.lightGreen),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseRandomica,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              RaisedButton(
                onPressed: _getFrases,
                color: Colors.green,
                child: Text(
                  _textoBotao,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
