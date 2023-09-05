import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apis/res/localization/languages.dart';
import 'package:getx_apis/res/routes/routes.dart';
import 'package:getx_apis/res/theme/theme.dart';
import 'package:getx_apis/view_models/controllers/auth/auth_controller.dart';

void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: const Locale("en","US"),
      fallbackLocale: const Locale("en","US"),
      getPages: AppRoutes.appRoutes()
      
    );
  }
}


 