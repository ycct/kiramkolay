import 'package:flutter/material.dart';

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

Text buildAppName(BuildContext context, String title, Color color) => Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(color: color),
    );
