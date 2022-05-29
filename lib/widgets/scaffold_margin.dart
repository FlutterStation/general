import 'package:flutter/material.dart';

class ScaffoldMargin extends StatelessWidget {
  const ScaffoldMargin(this.child,
      {Key? key, this.vertical = 8, this.horizontal = 15})
      : super(key: key);
  final Widget child;
  final double vertical;
  final double horizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: child,
    );
  }
}
