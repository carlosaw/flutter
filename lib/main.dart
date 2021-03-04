import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/models/contador.dart';
import 'src/home.dart';
import 'src/help.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Contador()),
      ],
      child: MeuApp(),
    ));

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/help': (context) => HelpPage(),
      },
      initialRoute: '/home',
    );
  }
}
