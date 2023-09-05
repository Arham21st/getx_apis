import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/components/primary_font.dart';
import '../../view_models/controllers/auth/auth_controller.dart';
import '../../view_models/controllers/signup/signup_controller.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  
  final signUpController = Get.put(SignUpController());


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () {
            AuthController.instance.signOut();
          },
          child: Center(child: PrimaryFont(text: "Welcome ${signUpController.usernameController.value.text.trim()}"))),

      )
    );
  }
}