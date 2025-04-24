
import 'package:get/get.dart';
import 'package:getx_auth_app/View/Home_view.dart';
import 'package:getx_auth_app/View/Login_view.dart';
import 'package:firebase_auth/firebase_auth.dart';



class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  void register(String email, String password) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: password);
      Get.offAll(HomePage());
    } catch (e) {
      Get.snackbar("Signup Error", e.toString());
    }
  }

  void login(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(HomePage());
    } catch (e) {
      Get.snackbar("Login Error", e.toString());
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAll(LoginPage());
  }
}
