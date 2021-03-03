import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  callAction() {}
  mapAction() {}
  shareAction() {}

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
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              )),
                          Text('Jerusalém, Israel',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.grey))
                        ],
                      )),
                      Row(children: <Widget>[
                        Icon(Icons.star, color: Colors.blue),
                        Text('9.875', style: TextStyle(fontSize: 10))
                      ])
                    ],
                  )),
              Container(
                  padding: EdgeInsets.all(8),
                  child: Row(children: [
                    Botao(
                      icon: Icons.call,
                      text: 'Ligar',
                      onPress: callAction,
                    ),
                    Botao(
                      icon: Icons.location_on,
                      text: 'Mapa',
                      onPress: mapAction,
                    ),
                    Botao(
                        icon: Icons.share,
                        text: 'Compartilhar',
                        onPress: shareAction),
                  ])),
              Container(
                  padding: EdgeInsets.all(30),
                  child: Text(
                      'Durante todos esses séculos de dominação estrangeira, nosso povo nunca abandonou seu Templo destruído. Rezava por sua reconstrução e milhares de judeus, quaisquer fossem os perigos, iam até Jerusalém - fosse apenas para olhar o Muro de longe ou, quem sabe, tocar suas pedras e abrir sua alma e coração nas preces que ali invocavam a Deus. Banhando-o com suas lágrimas, imploravam pela redenção do povo judeu. Por causa das lágrimas derramadas, o Kotel ficou conhecido como "Muro das Lamentações". Sua grandiosidade ficou escondida e sua estatura reduzida até 1967.',
                      style: TextStyle(fontSize: 9)))
            ])));
  }
}

class Botao extends StatelessWidget {
  Botao({this.onPress, @required this.icon, @required this.text});

  Function onPress;
  IconData icon;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FlatButton(
            onPressed: onPress,
            child: Column(children: [
              Icon(icon, color: Colors.blue),
              Text(text, style: TextStyle(fontSize: 9))
            ])));
  }
}
