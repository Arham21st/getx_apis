import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_apis/res/colors/app_colors.dart';
import 'package:getx_apis/res/components/primary_font.dart';
import 'package:getx_apis/res/dimensions/app_dimensions.dart';
import 'package:getx_apis/res/routes/routes_name.dart';
import 'package:getx_apis/view/signup/widgets/input_username.dart';
import 'package:getx_apis/view/signup/widgets/signup_button.dart';
import 'widgets/input_email.dart';
import 'widgets/input_password.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  
  
  final _formKEY = GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.background,
      backgroundColor:AppColors.backgroundLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Dimensions.height20*5,),
              //const Image(image: AssetImage("assets/images/logo.png")),
              SizedBox(height: Dimensions.height20*2,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: Dimensions.height20),
                    child: PrimaryFont(text: "Sign Up",size: Dimensions.height35,)
                  )
                ],
              ),
              SizedBox(height: Dimensions.height20*3),
              Form(
                key: _formKEY,
                child: Column(
                  children: [
                    InputUserNameWidget(),
                    SizedBox(height: Dimensions.height20,),
                    InputEmailWidget(),
                    SizedBox(height: Dimensions.height20,),
                    InputPasswordWidget(),
                  ],
                )
                ),
                
              SizedBox(height: Dimensions.height20,),
              SignUpButton(formKey: _formKEY),
              SizedBox(height: Dimensions.height20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryFont(text: "Already have an account?",size: Dimensions.height20,),
                  SizedBox(width: Dimensions.height5/2,),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RoutesName.loginScreen);
                    },
                    child: PrimaryFont(text: "Login",size: Dimensions.height20,fontWeight: FontWeight.bold,))
                ],
              )
            ],
          ),
        )),
    );
  }
}