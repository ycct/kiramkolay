import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kiramkolay/screens/home_screen/home_screen.dart';
import 'package:kiramkolay/utils/app_constants.dart';
import '../../widgets/elevated_button.dart';
import '../../widgets/methods/info_text.dart';
import 'components/text_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.08,
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  const Spacer(
                    flex: 5,
                  ),
                  const Expanded(
                      child: Icon(
                    Icons.home_work,
                    color: Colors.blue,
                  )),
                  const Spacer(),
                  Expanded(
                    flex: 3,
                    child: buildAppName(context, AppConstantsStrings.myAppName,
                        Colors.lightBlueAccent),
                  ),
                  Expanded(
                    flex: 3,
                    child: buildAppName(context,
                        AppConstantsStrings.myAppNameSecond, Colors.blue),
                  ),
                  const Spacer(
                    flex: 5,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: buildInformationText(context,
                  AppConstantsStrings.enterYourCode, Colors.black, 18.0),
            ),
            const Spacer(),
            Expanded(
              flex: 4,
              child: buildInformationText(
                  context,
                  AppConstantsStrings.enterYourCodeHint,
                  Colors.grey.shade400,
                  15),
            ),
            Expanded(
              flex: 4,
              child: buildRow(),
            ),
            Expanded(
              flex: 3,
              child: Text(
                "2:00",
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                AppConstantsStrings.haveNotGotCode,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Colors.blue),
              ),
            ),
            const Spacer(
              flex: 15,
            ),
            Expanded(
              flex: 3,
              child: MyElevatedButton(
                onTap: () {
                  Get.offAll(() => const HomeScreen());
                },
                title: AppConstantsStrings.okay,
                icon: Icons.done,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }


}
