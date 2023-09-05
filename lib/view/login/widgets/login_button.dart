import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/components/custom_button.dart';
import '../../../res/dimensions/app_dimensions.dart';
import '../../../view_models/controllers/login/login_controller.dart';

class LoginButton extends StatelessWidget {
  final formKey;
  LoginButton({super.key,required this.formKey});
  
  final loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
              child: Obx(() => CustomBotton(title: "Login", onPresss: () {
                  if(formKey.currentState!.validate()){
                    loginController.login(loginController.emailController.value.text.trim(), loginController.passwordController.value.text.trim());

                  }
                  //Get.toNamed(RoutesName.signUpScreen);
                },
                loading: loginController.loading.value,
                height: Dimensions.height20*2.5,
                width: double.maxFinite,
                radius: Dimensions.height10,),
                )
            );
          
  }
}