import 'package:flutter/material.dart';
import 'package:general/signature.dart';
import 'package:general/widgets/text.dart';

/// --------------------------
///
///
///
///
/// @author [ Mikagura12 ]
///
///
///
///
/// --------------------------

class BtnTextOnly extends StatelessWidget {
  const BtnTextOnly({
    Key? key,
    this.icon,
    required this.onTap,
    this.text,
    this.width,
    this.radius,
    this.color,
    this.height,
    this.isExpand = false,
    this.isReverse = false,
    this.vertical,
    this.horizontal,
  }) : super(key: key);
  final Widget? icon;
  final double? width;
  final Function onTap;
  final double? radius;
  final double? height;
  final double? vertical;
  final double? horizontal;
  final String? text;
  final Color? color;
  final bool isExpand;
  final bool isReverse;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 0),
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? 25, vertical: vertical ?? 14),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: isExpand ? MainAxisSize.max : MainAxisSize.min,
                children: [
                  isReverse
                      ? CustomText(
                          text ?? '',
                          color: color ?? Theme.of(context).primaryColor,
                          textAlign: TextAlign.center,
                        )
                      : SizedBox(
                          height: 25,
                          width: 25,
                          child: IconTheme(
                              data: Theme.of(context).iconTheme.copyWith(
                                    color:
                                        color ?? Theme.of(context).primaryColor,
                                  ),
                              child: icon!),
                        ),
                  const SizedBox(
                    width: 10,
                  ),
                  isReverse
                      ? SizedBox(
                          height: 25,
                          width: 25,
                          child: IconTheme(
                              data: Theme.of(context).iconTheme.copyWith(
                                    color:
                                        color ?? Theme.of(context).primaryColor,
                                  ),
                              child: icon!),
                        )
                      : CustomText(
                          text ?? '',
                          color: color ?? Theme.of(context).primaryColor,
                          textAlign: TextAlign.center,
                        ),
                ],
              )
            : CustomText(
                text ?? '',
                color: color ?? Theme.of(context).primaryColor,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}

class BtnFilled extends StatelessWidget {
  const BtnFilled({
    Key? key,
    this.icon,
    required this.onTap,
    this.text,
    this.width,
    this.radius,
    this.color,
    this.text_color,
    this.height,
    this.isExpand = false,
    this.isReverse = false,
    this.horizontal,
    this.vertical,
  }) : super(key: key);
  final Widget? icon;
  final double? width;
  final Function onTap;
  final double? radius;
  final double? height;
  final double? horizontal;
  final double? vertical;
  final String? text;
  final Color? color;
  final Color? text_color;
  final bool isExpand;
  final bool isReverse;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 0),
      splashColor: Colors.white,
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? 25, vertical: vertical ?? 14),
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(radius ?? 0),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: isExpand ? MainAxisSize.max : MainAxisSize.min,
                children: [
                  isReverse
                      ? CustomText(
                          text ?? '',
                          textAlign: TextAlign.center,
                          color: text_color ?? Colors.white,
                        )
                      : SizedBox(
                          height: 25,
                          width: 25,
                          child: IconTheme(
                              data: Theme.of(context)
                                  .iconTheme
                                  .copyWith(color: Colors.white),
                              child: icon!),
                        ),
                  const SizedBox(
                    width: 10,
                  ),
                  isReverse
                      ? SizedBox(
                          height: 25,
                          width: 25,
                          child: IconTheme(
                              data: Theme.of(context)
                                  .iconTheme
                                  .copyWith(color: Colors.white),
                              child: icon!),
                        )
                      : CustomText(
                          text ?? '',
                          textAlign: TextAlign.center,
                          color: text_color ?? Colors.white,
                        ),
                ],
              )
            : CustomText(
                text ?? '',
                textAlign: TextAlign.center,
                color: text_color ?? Colors.white,
              ),
      ),
    );
  }
}

class BtnBorder extends StatelessWidget {
  const BtnBorder({
    Key? key,
    this.icon,
    required this.onTap,
    this.text,
    this.width,
    this.radius,
    this.color,
    this.height,
    this.isExpand = false,
    this.isReverse = false,
    this.horizontal,
    this.vertical,
    this.style,
  }) : super(key: key);
  final Widget? icon;
  final double? width;
  final Function onTap;
  final double? radius;
  final double? horizontal;
  final double? vertical;
  final double? height;
  final String? text;
  final Color? color;
  final bool isExpand;
  final bool isReverse;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 0),
      onTap: () {
        onTap();
      },
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: horizontal ?? 25, vertical: vertical ?? 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0),
          border: Border.all(
            color: color ?? Theme.of(context).primaryColor,
          ),
        ),
        child: icon != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: isExpand ? MainAxisSize.max : MainAxisSize.min,
                children: [
                  isReverse
                      ? CustomText(
                          text ?? '',
                          textAlign: TextAlign.center,
                          color: color,
                          textStyle: style,
                        )
                      : SizedBox(
                          height: 25,
                          width: 25,
                          child: IconTheme(
                              data: Theme.of(context)
                                  .iconTheme
                                  .copyWith(color: color),
                              child: icon!),
                        ),
                  const SizedBox(
                    width: 10,
                  ),
                  isReverse
                      ? SizedBox(
                          height: 25,
                          width: 25,
                          child: IconTheme(
                              data: Theme.of(context)
                                  .iconTheme
                                  .copyWith(color: color),
                              child: icon!),
                        )
                      : CustomText(
                          text ?? '',
                          textAlign: TextAlign.center,
                          color: color,
                          textStyle: style,
                        )
                ],
              )
            : CustomText(
                text ?? '',
                color: color,
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
