import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final textStyle = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  tooltip: 'Carrito',
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite),
                  tooltip: 'Mis favoritos',
                  onPressed: () {})
            ],
            backgroundColor: Colors.indigo,
            leading: Icon(Icons.menu),
            elevation: 2.0,
            centerTitle: true,
            title: Text('GridView Page')),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return new Card(
              color: Colors.indigo,
              elevation: 10.0,
              child: new Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$index",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )),
            );
          }),
        ));
  }
}
