import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSingleChildLayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomSingleChildLayaout'),
      ),
      body: Container(
        color: Colors.purple,
        child: CustomSingleChildLayout(
          delegate: _MySingleChildLayoutDelegate(
            //send the size of the viewport to the delegate for computation
            widgetSize: size,
          ),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}

class _MySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  _MySingleChildLayoutDelegate({
    @required this.widgetSize,
  });

  final Size widgetSize;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    //we expand the layout to our predefined sizes
    return BoxConstraints.tight(widgetSize / 2);
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    //we place the widget at the cnter, by dividing the width and height by 2 to get the center
    return Offset(widgetSize.width / 4, widgetSize.height / 6);
  }

  @override
  bool shouldRelayout(_MySingleChildLayoutDelegate oldDelegate) {
    return widgetSize != oldDelegate.widgetSize;
  }
}
