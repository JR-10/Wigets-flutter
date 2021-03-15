import 'package:flutter/material.dart';
// Creado Por Wilner Torres M.

class AspectB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: _AspectRatio(context),
      // floatingActionButton: _baseline(context),
    );
  }

  Widget _AspectRatio(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 /
          2, // Esta es la propiedad que modifica el aspecto realizando un calculo y retornando un decimal
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Container(
              color: Colors.black,
              child: Text('This is Aspect Ratio.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
            width: 1000,
            height: 50,
          ),
          _baseline(context),
        ],
      ),
    );
  }

  Widget _baseline(BuildContext context) {
    return SizedBox(
      width: 1000,
      height: 50,
      child: Container(
        color: Colors.blue,
        child: Baseline(
          baseline:
              0.0, // Esta es la propiedad que modifica la linea de base y es controlada por un decimal
          baselineType: TextBaseline.alphabetic,
          child: Text('This is Baseline.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    );
  }
}
