import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hintText, this.onChanged, this.obscureText = false, this.inputKey});
  late String? hintText;
  bool? obscureText;
  Function(String)? onChanged;
  TextInputType? inputKey;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputKey,
      obscureText: obscureText!,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
