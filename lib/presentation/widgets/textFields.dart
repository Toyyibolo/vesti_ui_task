import 'package:flutter/material.dart';
import 'package:vesti_flutter_ui_task/core/utils/textStyle.dart';

// ignore: must_be_immutable
class VestiTextField extends StatelessWidget {
  String hintText;
  String labelText;
  late bool isPassword;

  VestiTextField(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      //textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.bottom,

      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  width: 0.5, color: Color.fromRGBO(208, 213, 221, 100))),
          labelText: labelText,
          floatingLabelStyle: VestiTextStyles.grey12300,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: isPassword ? Icon(Icons.remove_red_eye) : null),
    );
  }
}
