import 'package:custom_scroll_view/pages/custom_scroll_view.dart';
import 'package:custom_scroll_view/pages/main_drawer.dart';
import 'package:custom_scroll_view/pages/sized_overflow_box.dart';
import 'package:flutter/material.dart';

class HomeDos extends StatefulWidget {
  @override
  _HomeStateDos createState() => _HomeStateDos();
}

class _HomeStateDos extends State<HomeDos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        drawer: MainDrawer(),
        body: _home(context));
  }
}

Widget _home(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      FlatButton(
        child: Icon(Icons.pages),
        onPressed: () {
          //Navigator.pushNamed(context, "botones");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return WidgetCustomScrollView();
            }),
          );
        },
      ),
      SizedBox(
        width: 10,
      ),
      FlatButton(
        child: Icon(Icons.list),
        onPressed: () {
          // Navigator.pushNamed(context, "listas");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return WidgetSizedOverflowBox();
            }),
          );
        },
      ),
    ],
  );
}
