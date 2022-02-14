import 'package:flutter/material.dart';
import 'components/card_widget.dart';
import 'components/chip_widget.dart';
import 'components/text_field.dart';
import 'components/title_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: buildTextField("Nerede ev arıyorsun", Icons.search),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 3,
                    child: buildTextField("", Icons.sort),
                  ),
                ],
              ),
            ),
            const Expanded(
                flex: 3,
                child: ChipWidget(
                  title: "Site içinde",
                )),
            Expanded(
              flex: 1,
              child: buildRow(context),
            ),
            const Expanded(
              flex: 25,
              child: CardWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
