import 'package:flutter/material.dart';
import 'package:general/theme/colortheme.dart';

/// --------------------------
///
///
///
///
/// This is [ CustomText ]
/// @author [ Mikagura12 ]
///
///
///
///
/// --------------------------
class CustomText extends StatelessWidget {
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final String? text;
  final double? spacing;
  final int? maxLines;
  final double? letterSpacing;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextStyle? textStyle;
  final Type? type;
  const CustomText(this.text,
      {this.size,
      this.overflow,
      this.weight,
      this.color,
      this.spacing,
      this.maxLines,
      this.textAlign,
      this.letterSpacing,
      this.softWrap,
      this.textStyle,
      this.type});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap ?? true,
      style: textStyle?.copyWith(
            letterSpacing: letterSpacing ?? 0,
            fontSize: size,
            fontWeight: weight,
            wordSpacing: spacing,
            color: color,
          ) ??
          TextStyle(
            letterSpacing: letterSpacing ?? 0,
            fontSize: size,
            fontWeight: weight,
            wordSpacing: spacing,
            color: color,
          ),
    );
  }
}

class CustomCodeText extends StatelessWidget {
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final String? text;
  final double? spacing;
  final int? maxLines;
  final double? letterSpacing;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextStyle? textStyle;
  final Type? type;
  const CustomCodeText(this.text,
      {this.size,
      this.overflow,
      this.weight,
      this.color,
      this.spacing,
      this.maxLines,
      this.textAlign,
      this.letterSpacing,
      this.softWrap,
      this.textStyle,
      this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Theme.of(context).brightness == Brightness.dark
            ? darkSurface
            : lightSurface,
      ),
      child: Text(
        ' ${text!} ',
        overflow: overflow,
        maxLines: maxLines,
        textAlign: textAlign,
        softWrap: softWrap ?? true,
        style: textStyle?.copyWith(
                letterSpacing: letterSpacing ?? 0,
                fontSize: size,
                fontWeight: weight,
                wordSpacing: spacing,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black) ??
            categoryScale(context, type ?? Type.subtitle2)?.copyWith(
                letterSpacing: letterSpacing ?? 0,
                fontSize: size,
                fontWeight: weight,
                fontStyle: FontStyle.italic,
                wordSpacing: spacing,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black),
      ),
    );
  }
}

class CustomBtnText extends StatelessWidget {
  final double? size;
  final FontWeight? weight;
  final Color? color;
  final String? text;
  final double? spacing;
  final int? maxLines;
  final double? letterSpacing;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool? softWrap;
  final TextStyle? textStyle;
  const CustomBtnText(this.text,
      {this.size,
      this.overflow,
      this.weight,
      this.color,
      this.spacing,
      this.maxLines,
      this.textAlign,
      this.letterSpacing,
      this.softWrap,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text?.toUpperCase() ?? '',
      overflow: overflow,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap ?? true,
      style: textStyle?.copyWith(
              letterSpacing: letterSpacing ?? 0,
              fontSize: size,
              fontWeight: weight,
              wordSpacing: spacing,
              color: color) ??
          Theme.of(context).textTheme.button?.copyWith(
              letterSpacing: letterSpacing ?? 0,
              fontSize: size,
              fontWeight: weight,
              wordSpacing: spacing,
              color: color),
    );
  }
}

enum Type {
  headline6, // For app bar
  headline5, // --
  headline2, // For Big Title
  headline3, // For greetings
  overline, // usually placed on top of the Headline
  body1, //more of description or story paragraph
  body2, // smaller than body1
  subtitle2,
  caption // For Caption minitext
}

TextStyle? categoryScale(context, Type? type) {
  print(type);
  switch (type) {
    case Type.headline2:
      return Theme.of(context).textTheme.headline2!;
    case Type.headline3:
      return Theme.of(context).textTheme.headline3!;
    case Type.headline5:
      return Theme.of(context).textTheme.headline5!;
    case Type.headline6:
      return Theme.of(context).textTheme.headline6!;
    case Type.overline:
      return Theme.of(context).textTheme.overline!;
    case Type.body1:
      return Theme.of(context).textTheme.bodyText1!;
    case Type.body2:
      return Theme.of(context).textTheme.bodyText2!;
    case Type.caption:
      return Theme.of(context).textTheme.caption!;
    case Type.subtitle2:
      return Theme.of(context).textTheme.subtitle2!;
    default:
      return null;
  }
  return null;
}
