import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: RaisedButton(
        child: Text('Alerta'),
        color: Colors.blue,
        onPressed: () => _crearAlerta(context),
        shape: StadiumBorder(),
      )),
      // ================Accion del boton===================================
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

void _crearAlerta(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog Title'),
          shape: StadiumBorder(),
          content: Column(
            children: [Text('Hola')],
          ),
        );
      });
}
