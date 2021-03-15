import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliveNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("APP BAR"),
        // ),
        body: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          leading: Material(
              child: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          )),
          middle: Text('Cupertino Sliver Navigation Bar'),
          trailing: Material(
              child: IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () {},
          )),
          largeTitle: Text('Contactos'),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 60),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Text('Este es es un Sliver Padding',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic)),
              // SizedBox(
              //   height: 40,
              // ),
            ]),
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 3 / 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.blue[100 * (index % 9)],
                child: Text('Grid Item $index'),
              );
            },
            childCount: 10,
          ),
        ),
      ],
    ));
  }
}
