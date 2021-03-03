import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  botaoAction() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: Text('Meu primeiro App',
                    style: TextStyle(
                      fontSize: 18,
                    ))),
            body: Column(children: <Widget>[
              Image(image: AssetImage('assets/muro.jpg')),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('KOTEL',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('Jerusalém, Israel',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey))
                        ],
                      )),
                      Row(children: <Widget>[
                        Icon(Icons.star, color: Colors.blue),
                        Text('9.875', style: TextStyle(fontSize: 12))
                      ])
                    ],
                  )),
            ])));
  }
}
