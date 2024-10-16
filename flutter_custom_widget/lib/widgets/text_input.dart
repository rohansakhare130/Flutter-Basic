import 'package:flutter/material.dart';

class TextInputs extends StatelessWidget {
  final String labelText;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  const TextInputs({
    required this.labelText,
    this.icon,
    this.textStyle,
    this.callBack,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: TextField(
        obscureText: true,
        style: textStyle,
         
        decoration: InputDecoration(
          border: OutlineInputBorder(), 
          labelText: labelText,
          hintText: 'Enter $labelText',
          filled: false, 
        ),
      ),
    );
  }
}
