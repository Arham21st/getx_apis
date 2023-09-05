import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/colors/app_colors.dart';

import '../../../res/dimensions/app_dimensions.dart';
import '../../../utils/utils.dart';
import '../../../view_models/controllers/login/login_controller.dart';

class InputEmailWidget extends StatelessWidget {
  final loginController = Get.put(LoginController());
   InputEmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
      child: SizedBox(
        height: Dimensions.height20*2.8,
        child: TextFormField(
          focusNode: loginController.emailFocusNode.value,
          keyboardType: TextInputType.emailAddress,
          controller: loginController.emailController.value,
          onFieldSubmitted: (value) {
            Utils.fieldFocusChange(context, loginController.emailFocusNode.value, loginController.passwordFocusNode.value);
          },
          validator: (value) {
            if(value!.isEmpty){
              Utils.snackBar("Email", "Enter Email");
            }
            
            return null;
          },
          decoration: InputDecoration(
            
            hintText: "Email",
            hintStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: Dimensions.height20,color: AppColors.gray500),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.height10),
              borderSide: BorderSide.none,
              gapPadding: 1.0,
              
            ),
            fillColor: AppColors.whiteColor,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.height15),
              borderSide: BorderSide.none,
              gapPadding: 1.0,
            )
          ),
        ),
      ),
    );
  
  }
}