import 'package:flutter/material.dart';

class HDivider extends StatelessWidget {
  const HDivider(
      {Key? key,
      this.splitter = 30,
      this.color,
      this.isDot = false,
      this.width})
      : super(key: key);
  final int splitter;
  final Color? color;
  final double? width;
  final bool isDot;
  @override
  Widget build(BuildContext context) {
    return isDot
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                splitter < 30 ? 30 : splitter,
                (index) => Container(
                      height: 0.5,
                      width: 3,
                      color: color ?? Theme.of(context).primaryColor,
                    )),
          )
        : Container(
            height: 0.5,
            width: width ?? double.infinity,
            color: color ?? Theme.of(context).primaryColor,
          );
  }
}

class VDivider extends StatelessWidget {
  const VDivider(
      {Key? key,
      this.splitter = 30,
      this.color,
      this.isDot = false,
      this.height})
      : super(key: key);
  final int splitter;
  final double? height;
  final Color? color;

  final bool isDot;
  @override
  Widget build(BuildContext context) {
    return isDot
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                splitter < 30 ? 30 : splitter,
                (index) => Container(
                      height: 3,
                      width: 0.5,
                      color: color ?? Theme.of(context).primaryColor,
                    )),
          )
        : Container(
            width: 0.5,
            height: height ?? 500,
            color: color ?? Theme.of(context).primaryColor,
          );
  }
}
