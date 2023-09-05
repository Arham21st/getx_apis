import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/colors/app_colors.dart';
import 'package:getx_apis/res/components/custom_button.dart';
import 'package:getx_apis/res/dimensions/app_dimensions.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onTap;
  const InternetExceptionWidget({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Dimensions.height20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.cloud_off_outlined,size: Dimensions.height20*3,),
              SizedBox(height: Dimensions.height10,),
              Center(child: Text("internet_exception".tr,
              style: TextStyle(fontSize: Dimensions.height20*1.5,
              fontWeight: FontWeight.bold)
              ,textAlign: TextAlign.center,)),
              SizedBox(height: Dimensions.height10,),
              CustomBotton(title: "Retry", onPresss: onTap,
              height: Dimensions.height20*2,
              width: Dimensions.height20*6,
              radius: Dimensions.height10,)
            ],
          ),
        )),
    );
  }
}