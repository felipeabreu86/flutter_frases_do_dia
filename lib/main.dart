import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//**
// Método que inicializa o app
// */
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    color: Colors.white,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var fraseAtual = "Clique abaixo para gerar uma frase!";
  var frases = [
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "Imagine uma nova história para sua vida e acredite nela.",
    "Ser feliz sem motivo é a mais autêntica forma de felicidade.",
    "Não espere por uma crise para descobrir o que é importante em sua vida."
  ];

  /// Atualiza a frase atual e o estado da aplicação
  void atualizarFrase() {
    var index = Random().nextInt(frases.length);
    setState(() {
      fraseAtual = frases[index];
      print(fraseAtual);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Frases do Dia",
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.amber),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 80),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 80),
                      child: Text(
                        fraseAtual,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: atualizarFrase,
                      child: Text(
                        "Nova Frase",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
