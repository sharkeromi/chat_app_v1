import 'package:chat_app_v1/utils/constants/colors.dart';
import 'package:chat_app_v1/utils/constants/consts.dart';
import 'package:chat_app_v1/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TapableButtonContainer extends StatelessWidget {
  const TapableButtonContainer({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.firstButtonOnPressed,
    required this.secondButtonOnPressed,
    required this.firstButtonClicked,
    required this.secondButtonClicked,
  }) : super(key: key);

  final VoidCallback? firstButtonOnPressed, secondButtonOnPressed;
  final String firstText, secondText;
  final RxBool firstButtonClicked, secondButtonClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kButtonBorderRadius),
        color: cBackgroundNeutralColor2,
      ),
      child: Obx(
        () => Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              //! use this for webview overflow handling
              child: Padding(
                padding: const EdgeInsets.only(left: k5Padding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kButtonBorderRadius),
                  child: TextButton(
                    onPressed: firstButtonOnPressed,
                    style: kTextButtonStyle,
                    child: Container(
                      height: 40,
                      // width: width * .5 - 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kButtonBorderRadius),
                        color: firstButtonClicked.value ? cWhiteColor : cBackgroundNeutralColor2,
                      ),
                      child: Center(
                        child: Text(
                          firstText,
                          style: p14MediumTextStyle(firstButtonClicked.value ? cTextPrimaryColor : cTextSecondaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: k5Padding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kButtonBorderRadius),
                  child: TextButton(
                    onPressed: secondButtonOnPressed,
                    style: kTextButtonStyle,
                    child: Container(
                      height: 40,
                      // width: width * .5 - 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kButtonBorderRadius),
                        color: secondButtonClicked.value ? cWhiteColor : cBackgroundNeutralColor2,
                      ),
                      child: Center(
                        child: Text(
                          secondText,
                          style: p14MediumTextStyle(secondButtonClicked.value ? cTextPrimaryColor : cTextSecondaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}