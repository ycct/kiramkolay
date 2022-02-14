import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kiramkolay/widgets/text_field.dart';

Row buildRow() {
  List<Widget> myList = List.filled(
      6,
      Expanded(
        flex: 15,
        child: Padding(
          padding: EdgeInsets.all(Get.width * 0.005),
          child: const MyTextField(),
        ),
      ));
  return Row(
    children: myList,
  );
}