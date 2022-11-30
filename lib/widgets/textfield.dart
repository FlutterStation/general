import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
    this.text, {
    this.keyboard,
    this.lastTextField = false,
    this.defaultData,
    required this.controller,
    this.validator,
    this.inputFormatters,
    this.prefix,
    this.formKey,
    this.maxLines,
    this.height,
    this.width,
    this.contentPadding,
    this.suffix,
    this.color = Colors.black,
    this.onChanged,
    this.obscureText = false,
    this.radius,
    this.bgColor,
    this.hintTextColor,
    this.onSubmit,
    this.errorColor,
    this.textAlign,
    this.maxLength,
  });
  final double? radius;
  final Widget? suffix;
  final Widget? prefix;
  final int? maxLines;
  final Color color;
  final Color? bgColor;
  final Color? hintTextColor;
  final String text;
  final double? height;
  final double? width;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboard;
  final bool lastTextField;
  final String? defaultData;
  final List<TextInputFormatter>? inputFormatters;
  final Key? formKey;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final Function(String)? onSubmit;
  final Color? errorColor;
  final TextAlign? textAlign;
  final int? maxLength;
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: SizedBox(
        height: height,
        child: TextFormField(
          textAlign: textAlign ?? TextAlign.start,
          onFieldSubmitted: onSubmit,
          onChanged: onChanged,
          textCapitalization: TextCapitalization.words,
          controller: controller,
          inputFormatters: inputFormatters,
          maxLength: maxLength,
          onEditingComplete: () {
            if (lastTextField) {
              node.unfocus();
            }
            {
              node.nextFocus();
            }
          },
          validator: validator,
          obscureText: obscureText,
          style: Theme.of(context).textTheme.subtitle2,
          maxLines: obscureText ? 1 : maxLines,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          keyboardType: keyboard ?? TextInputType.text,
          enabled: defaultData == null,
          decoration: InputDecoration(
            suffixIcon: suffix,
            prefixIcon: prefix,
            contentPadding:
                contentPadding ?? const EdgeInsets.symmetric(horizontal: 8),
            filled: true,
            fillColor: bgColor ?? Theme.of(context).scaffoldBackgroundColor,
            focusColor: color,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
              borderSide: BorderSide(
                color: errorColor ?? Theme.of(context).errorColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
              borderSide: BorderSide(
                color: color,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
              borderSide: const BorderSide(style: BorderStyle.none),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
              borderSide: const BorderSide(style: BorderStyle.none),
            ),
            hintText: defaultData ?? text,
            hintStyle: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: hintTextColor ?? Colors.grey),
          ),
        ),
      ),
    );
  }
}
