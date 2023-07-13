import 'package:chat_app_v1/view/loginScreen.dart';
import 'package:chat_app_v1/view/registrationScreen.dart';
import 'package:chat_app_v1/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'package:chat_app_v1/widgets/customTapableButton.dart';

import 'package:get/get.dart';
import 'package:chat_app_v1/controller/authController.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final AuthenticationController _authenticationController =
      Get.find<AuthenticationController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Hero(
                    tag: 'logo',
                    child: SizedBox(
                      width: 50,
                      height: 60.0,
                      child: Image.asset('assets/logo.png'),
                    ),
                  ),
                  const Text(
                    'Flash Chat',
                    style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              CustomButton(
                onPressed: () {
                  Get.to(() => LogInScreen());
                },
                buttonText: 'Log In',
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                onPressed: () {
                  Get.to(() => RegistrationScreen());
                },
                buttonText: 'Sign In',
              )
            ],
          ),
        ),
      ),
    );
  }
}
