import 'package:custom_scroll_view/pages/alert_page.dart';
import 'package:custom_scroll_view/pages/input_page.dart';
import 'package:custom_scroll_view/pages/list_view.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'package:custom_scroll_view/pages/aspect_baseline.dart';
import 'package:custom_scroll_view/pages/custom_scroll_view.dart';
import 'package:custom_scroll_view/pages/sized_overflow_box.dart';
import 'package:custom_scroll_view/pages/slivers.dart';
import 'package:custom_scroll_view/pages/offstage.dart';
import 'package:custom_scroll_view/pages/cupertino_slive_nav_bar.dart';
import 'package:custom_scroll_view/pages/intrinsic_width.dart';
import 'package:custom_scroll_view/pages/custom_single_child_layout.dart';
import 'package:custom_scroll_view/pages/grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  List<ScreenHiddenDrawer> items = new List();

  @override
  void initState() {
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'CustomScrollView',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.teal[300],
        ),
        WidgetCustomScrollView()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'SizedOverflowBox',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        WidgetSizedOverflowBox()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'AspectRatio',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        AspectB()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Slivers',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        SliverPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'OffStage',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        TestPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'CupertinoSliveNavBar',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        CupertinoSliveNavBar()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'IntrinsicWidth',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        IntrinsicWidthWidget()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'CustomSingleChildLayout',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.orange,
        ),
        CustomSingleChildLayoutWidget()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'GridView',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.blue[900],
        ),
        GridViewPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Formulario',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.blue[900],
        ),
        InputPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'Alerta',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.blue[900],
        ),
        AlertPage()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: 'ListView',
          baseStyle:
              TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 28.0),
          colorLineSelected: Colors.blue[900],
        ),
        ListViewPage()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.lightBlue[900],
      backgroundColorAppBar: Colors.cyan[300],
      screens: items,
      // typeOpen: TypeOpen.FROM_RIGHT,
      // disableAppBarDefault: false,
      enableScaleAnimation: true,
      enableCornerAnimation: true,
      slidePercent: 80.0,
      //    verticalScalePercent: 80.0,
      //    contentCornerRadius: 10.0,
      //    iconMenuAppBar: Icon(Icons.menu),
      //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
      //    whithAutoTittleName: true,
      //    styleAutoTittleName: TextStyle(color: Colors.red),
      //    actionsAppBar: <Widget>[],
      //    backgroundColorContent: Colors.blue,
      //    elevationAppBar: 4.0,
      //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
      enableShadowItensMenu: true,
      //    backgroundMenu: DecorationImage(image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
    );
  }
}
