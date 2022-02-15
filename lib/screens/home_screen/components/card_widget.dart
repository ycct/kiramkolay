import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:kiramkolay/utils/app_constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: Get.height * 0.02),
            child: Container(
              height: Get.height * 0.6,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  color: Colors.grey.shade50,
                  borderRadius: BorderRadius.circular(Get.width * 0.07)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 3, child: buildImageWidget()),
                  Expanded(flex: 2, child: buildCartTitle(context))
                ],
              ),
            ),
          );
        });
  }

  ClipRRect buildImageWidget() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(Get.width * 0.07),
        topLeft: Radius.circular(Get.width * 0.07),
      ),
      child: Image.asset(
        AppConstantsStrings.cardImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Padding buildCartTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Get.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                buildText(context, AppConstantsStrings.cardTitleOne, 22),
                SizedBox(width: Get.width*0.02,),
                const Icon(Icons.check_circle,color: Colors.green,)
              ],
            ),
          ),
          Expanded(
            child: buildText(context, AppConstantsStrings.cardTitleTwo, 18),
          ),
          Expanded(
            child: buildText(context, AppConstantsStrings.cardTitleThree, 16),
          ),
          Expanded(
            child: buildText(context, AppConstantsStrings.cardTitleFour, 14),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildText(context, AppConstantsStrings.cardTitleSix, 22),
                buildText(context, AppConstantsStrings.cardTitleSeven, 20),
              ],
            ),
          )
        ],
      ),
    );
  }
  Text buildText(
    BuildContext context,
    String title,
    double size,
  ) {
    return Text(
      title,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: size),
    );
  }
}
