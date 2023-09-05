import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/colors/app_colors.dart';

class Utils{

  static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.mainColor,
      gravity: ToastGravity.BOTTOM
      );
  }

  static snackBar(String title, String message){
    Get.snackbar(
      title, 
      message,
      backgroundColor: AppColors.mainColor,
      snackPosition: SnackPosition.TOP);
  }
}