import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Plan extends StatelessWidget {
  final Widget child;
  const Plan({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      child: Container(
          child: PhotoView(
        imageProvider: AssetImage("assets/images/plan.png"),
      )),
    );
  }
}
