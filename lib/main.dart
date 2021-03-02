import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  botaoAction() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Meu primeiro App')),
            body: Column(
              children: <Widget>[
                Exemplo(
                    title: 'Texto 1',
                    onPress: () {
                      print('Clicou no item 1');
                    }),
                Exemplo(
                    title: 'Texto 2',
                    onPress: () {
                      print('Clicou no item 2');
                    })
              ],
            )));
  }
}

class Exemplo extends StatelessWidget {
  Exemplo({this.title, this.onPress});
  var title;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 230,
        color: Colors.red,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Text(title),
          FlatButton(child: Text('Clique aqui'), onPressed: onPress)
        ]));
  }
}
