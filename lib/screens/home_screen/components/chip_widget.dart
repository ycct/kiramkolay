import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  final String? title;
  const ChipWidget({
    Key? key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Chip(
              label: Text(
                title!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
              deleteIconColor: Colors.white,
              deleteIcon: const Icon(Icons.check_circle_sharp),
              onDeleted: () {},
            ),
          );
        });
  }
}
