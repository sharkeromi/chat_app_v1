import 'package:chat_app_v1/controller/authController.dart';
import 'package:chat_app_v1/utils/constants/styles.dart';
import 'package:chat_app_v1/view/loginScreen.dart';
import 'package:chat_app_v1/widgets/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
  final AuthenticationController authenticationController =
      Get.find<AuthenticationController>();
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Hero(
                tag: 'logo',
                child: SizedBox(
                  height: 150.0,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              //textAlign: TextAlign.center,
              onChanged: (value) {
                authenticationController.email.value = value;
              },
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              //textAlign: TextAlign.center,
              onChanged: (value) {
                authenticationController.password.value = value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter your password'),
            ),
            const SizedBox(
              height: 24.0,
            ),
            CustomButton(
              buttonText: 'Sign In',
              onPressed: () async {
                try {
                  print('1');
                  final newUser = await _auth.createUserWithEmailAndPassword(
                      email: authenticationController.email.value,
                      password: authenticationController.password.value);
                  print(authenticationController.email.value);
                  print(authenticationController.password.value);
                  if (newUser != null) {
                    print(newUser);
                    Get.to(() => LogInScreen());
                  } else {
                    print('dfsf');
                  }
                } catch (e) {
                  print(e);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
