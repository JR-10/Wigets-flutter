import 'package:custom_scroll_view/pages/main_drawer.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class WidgetCustomScrollView extends StatelessWidget {
  final rnd = new Random();

  // lista de colores
  final List<Color> colores = [
    Colors.black,
    Colors.black12,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.deepPurpleAccent,
    Colors.lightBlueAccent,
    Colors.pinkAccent,
    Colors.indigo,
    Colors.orangeAccent,
    Colors.yellow,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(
        10,
        (i) => Container(
              // generar la lista de colores
              width: double.infinity,
              height: 100,
              color: colores[rnd
                  .nextInt(this.colores.length)], // mostrar de manera aleatoria
              alignment: Alignment.center,
              child: Text('caja $i'),
            ));

    return Scaffold(
        // appBar: AppBar(title: Text('Titulo Pagina')),
        // drawer: MainDrawer(),
        body: CustomScrollView(
      // manejo del scroll para la lista
      slivers: <Widget>[
        SliverAppBar(
          // aplicar el widget de SliverAppBar
          title: Text('SliverAppBar'),
          pinned: true, // habilitar si se deja estatico
          centerTitle: true,
          expandedHeight: 200, // pixeles que se contraen
          /*
            flexibleSpace: FlexibleSpaceBar(
                title: Text('Custom Scroll View'),
                background: Image.network(
                  'https://static.nike.com/a/images/f_auto/dpr_3.0/w_371,c_limit/a76a7bba-36d1-4637-97ec-1ecfbfcfc547/tienda-oficial-del-fc-barcelona-camisetas-y-equipaciones.png',
                  fit: BoxFit.cover,
                )
              )*/
        ), // colocar imagen

        SliverList(delegate: SliverChildListDelegate(items) // lista
            ),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(items), itemExtent: 50),
      ],
    ));
  }
}
