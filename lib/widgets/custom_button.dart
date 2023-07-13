import 'package:chat_app_v1/utils/constants/styles.dart';

import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String buttonText;
  
  var onPressed;

   CustomButton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
      ),
      onPressed: onPressed,
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width - 30,
        decoration: const BoxDecoration(
          color: Color(0xFF007BEC),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: kPopTextStyle,
          ),
        ),
      ),
    );
  }
}
