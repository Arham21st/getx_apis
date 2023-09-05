import 'package:flutter/material.dart';
import 'package:getx_apis/res/colors/app_colors.dart';

import '../dimensions/app_dimensions.dart';

class PrimaryFont extends StatelessWidget {
  final Color? color;
  final String text;
  final double size;
  final FontWeight fontWeight;
  final TextAlignVertical textAlignVertical=TextAlignVertical.center;
  
  PrimaryFont({super.key,
          this.color = AppColors.blackColor,
          required this.text,
          this.size=0,
          this.fontWeight= FontWeight.w500
          
          });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        
        
        style: TextStyle(
          color: color,
          fontSize: size==0?Dimensions.height25:size,
          fontWeight: fontWeight,
          fontFamily: "Heading"
          
        ),
        
    );
  }
}