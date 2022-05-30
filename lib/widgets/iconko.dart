import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

class IconKO extends StatelessWidget {
  const IconKO(
    this.icon, {
    Key? key,
    this.size,
    this.color,
  }) : super(key: key);
  final String icon;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Iconify(
      icon,
      color: color,
      size: size ?? 18,
    );
  }
}
