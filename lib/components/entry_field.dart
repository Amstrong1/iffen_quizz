import 'package:flutter/material.dart';

class EntryField extends StatelessWidget {
  final String? hintText;
  final Color? fillColor;
  final Widget? prefixIcon;
  final String? initialValue;
  const EntryField(
      {Key? key,
      this.hintText,
      this.fillColor,
      this.prefixIcon,
      this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: fillColor ?? const Color(0xfffcfcfc),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 22.0,
          horizontal: 26.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Theme.of(context).hintColor.withOpacity(0.2),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(
            color: Theme.of(context).hintColor.withOpacity(0.2),
          ),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
