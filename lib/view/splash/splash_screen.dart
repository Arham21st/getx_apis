import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/colors/app_colors.dart';
import 'package:getx_apis/res/dimensions/app_dimensions.dart';
import 'package:getx_apis/view_models/services/splash_services.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

   final splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashScreenController.startAnimation();
    return SafeArea(child: 
    Scaffold(
      body: Stack(
        children: [
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            top: 0,
            left: splashScreenController.animate.value?0:Dimensions.height20*5 ,
            child: Container(
            height: Dimensions.height20*2,
            width: Dimensions.height20*2,
            decoration: const BoxDecoration(
              color: AppColors.mainColor
            ),
          ),
          ),
          ),
          
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            top: splashScreenController.animate.value?Dimensions.height20*8:30,
            left: splashScreenController.animate.value?Dimensions.height20*5:30,
            child: Container(
            height: Dimensions.height20*2,
            width: Dimensions.height20*2,
            decoration: const BoxDecoration(
              color: AppColors.tAccentColor
            ),
          ),
          ),),
          
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: splashScreenController.animate.value?Dimensions.height20*5:0,
            
            child: Container(
            height: Dimensions.height20*20,
            width: Dimensions.height20*21,
            decoration: const BoxDecoration(
              color: Colors.deepPurpleAccent
            ),
          ),
          ),),
          
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            bottom: splashScreenController.animate.value?Dimensions.height20*2:0,
            right: Dimensions.height20,
            child: Container(
            height: Dimensions.height20*2,
            width: Dimensions.height20*2,
            decoration: const BoxDecoration(
              color: Colors.redAccent
            ),
          ),
          ),)
        ],
      ),
    )
    );
  }
}