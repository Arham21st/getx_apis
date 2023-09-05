import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/colors/app_colors.dart';
import 'package:getx_apis/res/components/primary_font.dart';
import 'package:getx_apis/res/dimensions/app_dimensions.dart';
import 'package:getx_apis/res/routes/routes_name.dart';
import 'widgets/input_email.dart';
import 'widgets/input_password.dart';
import 'widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  
  final _formKEY = GlobalKey<FormState>();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.background,
      backgroundColor:AppColors.backgroundLight,
      body: SafeArea(
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
                  child: PrimaryFont(text: "Login",size: Dimensions.height35,)
                )
              ],
            ),
            SizedBox(height: Dimensions.height20*3),
            Form(
              key: _formKEY,
              child: Column(
                children: [
                  InputEmailWidget(),
                  SizedBox(height: Dimensions.height20,),
                  InputPasswordWidget(),
                ],
              )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.height20,vertical: Dimensions.height5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  PrimaryFont(text: "Forgot password",size: Dimensions.height15*1.2,)
                ],),
              ),
            SizedBox(height: Dimensions.height20,),
            LoginButton(formKey: _formKEY),
            SizedBox(height: Dimensions.height20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryFont(text: "Didn't have an account?",size: Dimensions.height20,),
                SizedBox(width: Dimensions.height5/2,),
                InkWell(
                  onTap: () {
                    Get.toNamed(RoutesName.signUpScreen);
                  },
                  child: PrimaryFont(text: "Sign up",size: Dimensions.height20,fontWeight: FontWeight.bold,))
              ],
            )
          ],
        )),
    );
  }
}