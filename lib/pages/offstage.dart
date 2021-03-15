import 'package:flutter/material.dart';
// Gustavo

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        //Ejemplo de Offstage
        body: Offstage(
            offstage: false,
            child: Container(
                width: 200.0,
                height: 200.0,
                color: Colors.white,
                child: Align(
                  alignment: const Alignment(1.0, 1.0),
                  child: SizedBox(
                    width: 10.0,
                    height: 20.0,
                    // Ejemplo de OverflowBox
                    child: OverflowBox(
                      minWidth: 0.0,
                      maxWidth: 100.0,
                      minHeight: 0.0,
                      maxHeight: 50.0,
                      child: Container(
                        color: Color.fromARGB(100, 0, 128, 200),
                      ),
                    ),
                  ),
                ))));
  }
}
