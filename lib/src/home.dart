import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Home Page')),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  height: 200,
                  child: Center(
                    child: Text(
                      'Bem vindo ao App',
                      style: TextStyle(fontSize: 20),
                    ),
                  )),
              RaisedButton(
                  child: Text('Fazer Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  })
            ],
          ),
        ));
  }
}
