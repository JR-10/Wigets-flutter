import 'package:custom_scroll_view/pages/main_drawer.dart';
import 'package:flutter/material.dart';

class WidgetSizedOverflowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Ejercico Dos',
        style: TextStyle(color: Colors.red), // estilos del texto
      )),
      // drawer: MainDrawer(),
      body: Container(
        color: Colors.orangeAccent,
        child: SizedOverflowBox(
          size: const Size(
            80.0,
            100.0,
          ),
          alignment: AlignmentDirectional.bottomStart,
          child: Container(
            height: 50.0,
            width: 150.0,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
