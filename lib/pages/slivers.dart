import 'package:flutter/material.dart';
// Creado Por Wilner Torres M.

class SliverPage extends StatefulWidget {
  // name({Key key}) : super(key: key);

  @override
  _SliverPage createState() => _SliverPage();
}

class _SliverPage extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        floating: false,
        expandedHeight: 50.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('SliversList'),
          centerTitle: true,
          collapseMode: CollapseMode.parallax,
        ),
      ),
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
                height: 50,
                alignment: Alignment.center,
                color: Colors.red[100 * (index % 9)],
                child: Text('First $index'));
          },
          childCount: 15,
        ),
      ),
      // ),
      SliverAppBar(
        pinned: true,
        floating: false,
        expandedHeight: 50.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('SliverListFixedExtent'),
          centerTitle: true,
          collapseMode: CollapseMode.parallax,
        ),
      ),

      SliverFixedExtentList(
        itemExtent: 50.0,
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.lightBlue[100 * (index % 9)],
              child: Text('list item $index'),
            );
          },
          childCount: 15,
        ),
      )
    ]);
  }
}
