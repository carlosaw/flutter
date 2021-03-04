import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Mostrar SnackBar'),
        onPressed: () {
          var snackbar = SnackBar(
            content: Text('Testando 123...'),
            action: SnackBarAction(
              label: 'Desfazer',
              onPressed: () {},
            ),
          );
          Scaffold.of(context).showSnackBar(snackbar);
        },
      ),
    );
  }
}
