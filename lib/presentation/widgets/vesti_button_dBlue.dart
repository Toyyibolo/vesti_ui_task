import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vesti_flutter_ui_task/core/utils/textStyle.dart';

// ignore: must_be_immutable
class VestiButtonDBlue extends StatelessWidget {
  String buttonText;
  void Function() onPressed;

  VestiButtonDBlue(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color.fromRGBO(48, 61, 148, 100),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        buttonText,
        style: VestiTextStyles.white16600,
      ),
    );
  }
}
