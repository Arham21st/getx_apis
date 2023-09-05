import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/colors/app_colors.dart';
import 'package:getx_apis/view_models/controllers/signup/signup_controller.dart';

import '../../../res/dimensions/app_dimensions.dart';
import '../../../utils/utils.dart';
class InputUserNameWidget extends StatelessWidget {
  final signUpController = Get.put(SignUpController());
   InputUserNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
      child: SizedBox(
        height: Dimensions.height20*2.8,
        child: TextFormField(
          focusNode: signUpController.usernameFocusNode.value,
          keyboardType: TextInputType.name,
          controller: signUpController.usernameController.value,
          onFieldSubmitted: (value) {
            Utils.fieldFocusChange(context, signUpController.usernameFocusNode.value, signUpController.emailFocusNode.value);
          },
          validator: (value) {
            if(value!.isEmpty){
              Utils.snackBar("Username", "Enter Username");
            }
            
            return null;
          },
          decoration: InputDecoration(
            
            hintText: "Username",
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