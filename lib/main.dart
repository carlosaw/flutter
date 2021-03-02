import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Meu primeiro App')),
          body: Container(
              color: Colors.red,
              child: Row(
                children: [
                  Expanded(child: Text('NOME')),
                  Expanded(child: Text('SOBRENOME')),
                  Expanded(child: Text('IDADE')),
                ],
              ))),
    );
  }
}
