import 'package:flutter/material.dart';

Row buildRow(BuildContext context) {
  return Row(
    children: [
      Expanded(
        flex: 1,
        child: buildInformationText(context, "14", Colors.grey, 22),
      ),
      Expanded(
        flex: 3,
        child: buildInformationText(context, "Sonuç", Colors.grey, 22),
      ),
      const Spacer(
        flex: 3,
      ),
      Expanded(
        flex: 4,
        child:
        buildInformationText(context, "Ilanları Sırala", Colors.grey, 15),
      ),
      const Expanded(
        flex: 1,
        child: Icon(
          Icons.sort,
          color: Colors.grey,
        ),
      ),
    ],
  );
}


Text buildInformationText(
    BuildContext context, String title, Color color, double fontSize) =>
    Text(
      title,
      style: Theme.of(context)
          .textTheme
          .bodyText1!
          .copyWith(fontSize: fontSize, color: color),
      textAlign: TextAlign.center,
    );