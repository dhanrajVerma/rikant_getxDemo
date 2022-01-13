import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getbuilder/screen2.dart';
import 'controller/validation_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 60, left: 16, right: 16),
          width: context.width,
          height: context.height,
          child: SingleChildScrollView(
            child: Form(
              key: controller.loginFormKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    controller: controller.emailController,
                    onSaved: (value) {
                      controller.email = value!;
                    },
                    validator: (value) {
                      return controller.validateEmail(value!);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Password",
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: controller.passwordController,
                    onSaved: (value) {
                      controller.password = value!;
                    },
                    validator: (value) {
                      return controller.validatePassword(value!);
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(14)),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    onPressed: () {
                      if (controller.loginFormKey.currentState!.validate()) {
                        Get.to(const Screen2());
                      }
                      // controller.checkLogin();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
