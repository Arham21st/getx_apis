import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/models/login/user_data_model.dart';
import 'package:getx_apis/repository/signup/signup_repo.dart';
import 'package:getx_apis/res/routes/routes_name.dart';
import 'package:getx_apis/utils/utils.dart';
import 'package:getx_apis/view_models/controllers/user_preference/user_preference.dart';

import '../auth/auth_controller.dart';

class SignUpController extends GetxController{

  final _api = SignUpRepo();

  UserPreference userPreference = UserPreference();

  final usernameController = TextEditingController().obs;
  
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  final usernameFocusNode = FocusNode().obs;

  RxBool loading = false.obs;

  void signupApi(){

    loading.value = true;


    Map data = {

      "email" : emailController.value.text,
      "password" : passwordController.value.text

    };

    _api.signUpApi(data).then((value) {

      loading.value = false;

      if(value["error"]== "user not found"){

        Utils.snackBar("Login", value["error"]);

      }
      else{

        UserDataModel userDataModel = UserDataModel(
          
          isLogin: true, 
          token: value["token"]
          
          );

        userPreference.saveUser(userDataModel).then((value) {

          Get.delete<SignUpController>();

          Get.toNamed(RoutesName.homeScreen);

          Utils.snackBar("Login", "Login Successfully");

        }).onError((error, stackTrace) {



        });

        

      }
      

    }).onError((error, stackTrace) {

      loading.value = false;


      Utils.snackBar("Error", error.toString());

    });
  }

  void signUp(String email,password){
   
    AuthController.instance.cretteUserWithEmailAndPassword(email, password);

  }
  

}