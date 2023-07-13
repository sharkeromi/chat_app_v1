import 'package:chat_app_v1/view/loginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Chat App'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () async {
                await _auth.signOut();
                Get.offAll(() => LogInScreen());
              },
              icon: Icon(Icons.cancel))
        ],
      ),
    );
  }
}
