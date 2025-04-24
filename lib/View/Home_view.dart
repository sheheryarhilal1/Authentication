import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_auth_app/Controller/Auth_controller.dart';


class HomePage extends StatelessWidget {
  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(onPressed: () => authController.logout(), icon: Icon(Icons.logout))
        ],
      ),
      body: Center(child: Text("You're logged ")),
    );
  }
}
