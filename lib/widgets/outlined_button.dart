import 'package:flutter/material.dart';

class MyOutlinedButton extends StatelessWidget {
  final IconData? icon;
  final String? title;
  const MyOutlinedButton({Key? key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Icon(
              icon,
              size: 20,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(title!),
          ],
        ));
  }
}
