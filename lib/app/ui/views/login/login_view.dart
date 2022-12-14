import 'package:flutter/material.dart';
import 'package:g62_find_home/app/ui/views/login/login_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Center(
          child: ElevatedButton(
            onPressed: () => controller.doAuthentication(),
            child: const Text("Login"),
          ),
        ),
      ),
    );
  }
}
