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
              Image(width: 450, image: AssetImage('assets/muro.jpg')),
              Row(children: [
                Column(
                  children: [
                    Container(),
                    Row(
                      children: [
                        Text('KOTEL',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Jerusalém, Israel',
                            style: TextStyle(fontSize: 10)),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            child:
                                Icon(Icons.star, size: 20, color: Colors.blue)),
                        Text('3.985', style: TextStyle(fontSize: 10))
                      ],
                    )
                  ],
                )
              ]),
              Row(children: [
                Expanded(child: Container(height: 100, color: Colors.pink))
              ]),
            ])
            /*body: Column(
              children: <Widget>[
                Image(width: 450, image: AssetImage('assets/muro.jpg')),
                Container(
                    width: 250,
                    child:
                        Image.network('https://www.google.com.br/google.jpg'))
              ],
            )*/
            ));
  }
}
