import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? title;
  final IconData? icon;

  const MyElevatedButton({Key? key, this.title, this.icon, this.onTap, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,size: 20,),
          const SizedBox(
            width: 5,
          ),
          Text(title!),
        ],
      ),
    );
  }
}
