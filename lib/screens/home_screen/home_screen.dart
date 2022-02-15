import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kiramkolay/utils/app_constants.dart';
import 'components/card_widget.dart';
import 'components/chip_widget.dart';
import 'components/detail_screen.dart';
import 'components/text_field.dart';
import 'components/title_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: buildFloatingActionButton(context),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
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
                    flex: 12,
                    child: buildTextField(
                        AppConstantsStrings.searchBarHint, Icons.search),
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
              flex: 2,
              child: GestureDetector(
                  onTap: () {
                    Get.to(() => const DetailScreen());
                  },
                  child: buildRow(context)),
            ),
            const Divider(
              thickness: 2,
            ),
            const Expanded(
              flex: 28,
              child: CardWidget(),
            ),
          ],
        ),
      ),
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () {},
        icon: const Icon(
          Icons.add_location_alt_outlined,
          color: Colors.blue,
        ),
        label: Text(
          "Harita",
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Colors.grey),
        ),
      );
  }
}
