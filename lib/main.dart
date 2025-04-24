import 'package:flutter/material.dart';
import 'package:getx_auth_app/Controller/Auth_controller.dart';
import 'package:getx_auth_app/View/Login_view.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(AuthController()); // Initialize AuthController
    return GetMaterialApp(
      title: 'GetX Auth',
      home: LoginPage(),
    );
  }
}
