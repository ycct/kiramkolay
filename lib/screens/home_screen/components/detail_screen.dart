import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:kiramkolay/screens/home_screen/components/title_row.dart';
import 'package:kiramkolay/utils/app_constants.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            Expanded(
                flex: 2,
                child: buildInformationText(context,
                    AppConstantsStrings.selectCountry, Colors.black, 22)),
            Expanded(
                flex: 3,
                child: CountryCodePicker(
                  backgroundColor: Colors.grey.shade100,
                )),
            const Spacer(
              flex: 35,
            ),
          ],
        ),
      ),
    );
  }
}
