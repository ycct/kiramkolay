import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kiramkolay/widgets/methods/info_text.dart';
import 'package:kiramkolay/widgets/text_field.dart';
import 'package:kiramkolay/widgets/elevated_button.dart';
import 'package:kiramkolay/screens/verification_screen/verification_screen.dart';
import 'package:kiramkolay/utils/app_constants.dart';

import '../../widgets/outlined_button.dart';
import 'components/rich_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),

            ///LogoAppName
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

            ///InformationTitle
            Expanded(
              flex: 1,
              child: buildInformationText(context,
                  AppConstantsStrings.registerInformation, Colors.black, 18.0),
            ),
            const Spacer(),

            ///InformationHint
            Expanded(
              flex: 4,
              child: buildInformationText(
                  context,
                  AppConstantsStrings.registerInformationDetail,
                  Colors.grey,
                  16.0),
            ),

            ///PhoneSection
            Expanded(
              flex: 3,
              child: Row(
                children: const [
                  Expanded(
                    flex: 5,
                    child: MyTextField(
                      labelText: AppConstantsStrings.code,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 12,
                    child: MyTextField(
                      labelText: AppConstantsStrings.phoneNumber,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            ///PhoneSectionHintText
            Expanded(
              flex: 1,
              child: buildInformationText(
                  context,
                  AppConstantsStrings.sendingCodeInformation,
                  Colors.grey.shade400,
                  12),
            ),

            ///Space
            const Expanded(
              flex: 10,
              child: SizedBox(),
            ),

            ///ElevatedButton
            Expanded(
              flex: 3,
              child: MyElevatedButton(
                onTap: () {
                  Get.to(() => const VerificationScreen());
                },
                title: AppConstantsStrings.getSms,
                icon: Icons.message_sharp,
              ),
            ),
            SizedBox(height: Get.height*0.015,),

            ///OutlinedButton
            const Expanded(
              flex: 3,
              child: MyOutlinedButton(
                icon: Icons.whatshot,
                title: AppConstantsStrings.getWpSms,
              ),
            ),
            const Spacer(),

            ///Information
            Expanded(
              flex: 3,
              child: buildRichText(),
            ),
          ],
        ),
      ),
    );
  }


}
