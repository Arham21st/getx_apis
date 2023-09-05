import 'package:get/get.dart';
import 'package:getx_apis/res/routes/routes_name.dart';
import 'package:getx_apis/view/login/login_screen.dart';
import 'package:getx_apis/view/signup/signup_screen.dart';
import 'package:getx_apis/view/splash/splash_screen.dart';

import '../../view/home/home_screen.dart';

class AppRoutes{

  static appRoutes() => [

    GetPage(name: RoutesName.splashScreen, 
    page: () =>  SplashScreen(),
    transition: Transition.leftToRightWithFade),

    GetPage(name: RoutesName.loginScreen, 
    page: () => const LoginScreen(),
    transition: Transition.leftToRightWithFade),

    GetPage(name: RoutesName.signUpScreen, 
    page: () => const SignUpScreen(),
    transition: Transition.leftToRightWithFade),

    GetPage(name: RoutesName.homeScreen, 
    page: () =>  HomeScreen(),
    transition: Transition.leftToRightWithFade)
  ];
}