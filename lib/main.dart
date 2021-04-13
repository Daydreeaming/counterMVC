import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Contador')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Você pressionou o botão:',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Center(
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 34),
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [],
      ),
    );
  }

  // Componente local (pra "uma tela") //

  FloatingActionButton buildFloatingActionButton({
    Color backgroundColorButton,
    IconData icone,
    Function apertar,
  }) {
    return FloatingActionButton(
      onPressed: apertar,
      child: Icon(icone),
      backgroundColor: backgroundColorButton,
    );
  }
}
