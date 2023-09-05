import 'package:flutter/material.dart';
import 'package:getx_apis/res/components/primary_font.dart';

import '../colors/app_colors.dart';

class CustomBotton extends StatelessWidget {
 final bool loading;
 final String title;
 final double height, width,radius;
 final VoidCallback onPresss;
 final Color textColor, buttonColor;
 
  const CustomBotton({
    this.buttonColor=AppColors.mainColor,
    this.textColor=AppColors.fontColordark,
    required this.title,
    required this.onPresss,
    this.width= 100,
    this.height=40,
    this.loading=false,
    this.radius=20,
    super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPresss,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius)
        ),
        child: loading?
        const Center(child: CircularProgressIndicator(color: AppColors.blackColor,)):
        Center(child: PrimaryFont(text: title,color: textColor,),),
      ),
    );
  }
}