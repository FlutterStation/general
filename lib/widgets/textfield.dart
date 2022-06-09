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
    this.suffix,
    this.color = Colors.black,
    this.onChanged,
    this.obscureText = false,
    this.radius,
  });
  final double? radius;
  final Widget? suffix;
  final Widget? prefix;
  final int? maxLines;
  final Color color;
  final String text;
  final double? height;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? keyboard;
  final bool lastTextField;
  final String? defaultData;
  final List<TextInputFormatter>? inputFormatters;
  final Key? formKey;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: TextFormField(
        onChanged: onChanged,
        textCapitalization: TextCapitalization.words,
        controller: controller,
        inputFormatters: inputFormatters,
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
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            filled: true,
            fillColor: color.withOpacity(0.2),
            focusColor: color,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius ?? 8),
              borderSide: const BorderSide(
                color: Colors.red,
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
              borderSide: const BorderSide(color: Colors.grey),
            ),
            hintText: defaultData ?? text,
            hintStyle: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.grey)),
      ),
    );
  }
}
