import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/colors/app_colors.dart';

import '../../../res/dimensions/app_dimensions.dart';
import '../../../utils/utils.dart';
import '../../../view_models/controllers/signup/signup_controller.dart';

class InputPasswordWidget extends StatelessWidget {
  final signUpController = Get.put(SignUpController());
   InputPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
      child: SizedBox(
        height: Dimensions.height20*2.8,
        child: TextFormField(
          obscureText: true,
          focusNode: signUpController.passwordFocusNode.value,
          keyboardType: TextInputType.visiblePassword,
          controller: signUpController.passwordController.value,
          validator: (value) {
            if(value!.isEmpty){
              Utils.snackBar("Password", "Enter Password");
            }
            
            return null;
          },
          decoration: InputDecoration(
            
            hintText: "Password",
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