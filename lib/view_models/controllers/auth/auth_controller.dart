import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/routes/routes_name.dart';

import '../../../utils/utils.dart';


class AuthController extends GetxController{

  static AuthController instance = Get.find();

  late Rx<User?> _user;

  FirebaseAuth auth = FirebaseAuth.instance;

  RxBool loading = false.obs;

  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }
  
  _initialScreen(User? user){
    
      if(user==null){
        Get.toNamed(RoutesName.splashScreen);
      Timer(
            const Duration(seconds: 5),
            () => Get.toNamed(RoutesName.loginScreen)
        );
      }else{
        Get.toNamed(RoutesName.splashScreen);
      Timer(
            const Duration(seconds: 5),
            () => Get.toNamed(RoutesName.homeScreen)
        );
      }
    
      
    
  }

  Future <void> cretteUserWithEmailAndPassword(String email, password)async{
    loading.value = true;
    try{
      
     await auth.createUserWithEmailAndPassword(
      email: email, 
      password: password
      );

      //_user.value!=null?Get.toNamed(RoutesName.homeScreen):Get.toNamed(RoutesName.splashScreen);

     loading.value = false;

    } on FirebaseAuthException catch(e){

      Utils.snackBar("Errpr", e.code);

      loading.value = false;
    }
    catch(e){
      Utils.snackBar("Registration Failed", e.toString());

      loading.value = false;
    }
  }


  Future <void> loginUserWithEmailAndPassword(String email, password)async{
    loading.value = true;
    try{
      
     await auth.signInWithEmailAndPassword(
      email: email, 
      password: password
      );

      Get.toNamed(RoutesName.homeScreen);

     loading.value = false;

    } on FirebaseAuthException catch(e){

      Utils.snackBar("Errpr", e.code);

      loading.value = false;
    }
    catch(e){
      Utils.snackBar("Registration Failed", e.toString());

      loading.value = false;
    }
  }

  Future <void> signOut()async{

    await auth.signOut();
    

  }



}