import 'package:flutter/material.dart';

TextField buildTextField(String title, IconData? icon) {
  return TextField(
    textAlignVertical: TextAlignVertical.center,
    decoration: InputDecoration(
      hintText: title,
      hintStyle: TextStyle(color: Colors.grey.shade400),
      prefixIcon: title == ""
          ? Center(
        child: Icon(
          icon,
          color: Colors.blue,
          size: 25,
        ),
      )
          : Icon(
        icon,
        color: Colors.blue,
        size: 25,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
