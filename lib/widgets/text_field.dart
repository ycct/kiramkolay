import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final IconData? icon;
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;

  const MyTextField({
    Key? key,
    this.icon,
    this.hintText,
    this.controller,
    this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      autocorrect: false,
      keyboardType: TextInputType.visiblePassword,
      controller: controller,
      decoration: InputDecoration(
          floatingLabelBehavior:FloatingLabelBehavior.always,
          labelText: labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }
}
