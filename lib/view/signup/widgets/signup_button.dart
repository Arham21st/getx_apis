import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/components/custom_button.dart';
import 'package:getx_apis/view_models/controllers/auth/auth_controller.dart';
import 'package:getx_apis/view_models/controllers/signup/signup_controller.dart';
import '../../../res/dimensions/app_dimensions.dart';

class SignUpButton extends StatelessWidget {
  final formKey;
  SignUpButton({super.key,required this.formKey});

  
  final signUpController = Get.put(SignUpController());
  


  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
              child: Obx(() => CustomBotton(title: "Sign Up", onPresss: () {
                  if(formKey.currentState!.validate()){
                  signUpController.signUp(signUpController.emailController.value.text.trim(),signUpController.passwordController.value.text.trim());
                  }
                  // Get.toNamed(RoutesName.loginScreen);
                  //signUpController.signUp(signUpController.usernameController.value.text.trim(),signUpController.emailController.value.text.trim(),signUpController.passwordController.value.text.trim());
                  
                },
                loading: AuthController.instance.loading.value,
                height: Dimensions.height20*2.5,
                width: double.maxFinite,
                radius: Dimensions.height10,),
                )
            );
          
  }
}