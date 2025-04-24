import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_auth_app/Controller/Auth_controller.dart';

class SignUpPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
          TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password"), obscureText: true),
          ElevatedButton(
            onPressed: () => authController.register(emailController.text, passwordController.text),
            child: Text("Register"),
          )
        ]),
      ),
    );
  }
}
