import 'package:flutter/material.dart';

pushTo(BuildContext context, Widget page) {
  return Navigator.push(
      context, MaterialPageRoute(builder: ((context) => page)));
}

pushReplacementTo(BuildContext context, Widget page) {
  return Navigator.pushReplacement(
      context, MaterialPageRoute(builder: ((context) => page)));
}
