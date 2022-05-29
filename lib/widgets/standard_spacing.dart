import 'package:flutter/material.dart';

class StandardMargin extends StatelessWidget {
  const StandardMargin(
      {Key? key, this.child, this.vertical = 8, this.horizontal = 15})
      : super(key: key);
  final Widget? child;
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

class StandardPadding extends StatelessWidget {
  const StandardPadding(
      {Key? key, this.child, this.vertical = 8, this.horizontal = 15})
      : super(key: key);
  final Widget? child;
  final double vertical;
  final double horizontal;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
      child: child,
    );
  }
}
