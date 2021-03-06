import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

import '../../splash/controllers/auth_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: height / 20,
                ),
                Image.asset(
                  "assets/images/png/login.png",
                  width: width / 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome to Trip",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            TextFormField(
                              controller: controller.emailController,
                              keyboardType: TextInputType.emailAddress,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(
                                    RegExp(r"\s\b|\b\s")),
                                FilteringTextInputFormatter.deny(RegExp('[ ]')),
                              ],
                              validator: (value) {
                                if (!GetUtils.isEmail(value!)) {
                                  return "Email is not valid";
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  prefix: const Padding(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                    ),
                                  ),
                                  hintText: 'Enter email address',
                                  label: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                          color: Colors.blueGrey.shade700,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(6)),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(6),
                                  )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Obx(() => TextFormField(
                                  controller: controller.passwordController,
                                  keyboardType: TextInputType.text,
                                  obscureText: controller.hidePassword.value,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r"\s\b|\b\s")),
                                    FilteringTextInputFormatter.deny(
                                        RegExp('[ ]')),
                                  ],
                                  validator: (value) {
                                    if (value!.length < 6) {
                                      return "Password at least 6 character or number";
                                    } else {
                                      return null;
                                    }
                                  },
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 20),
                                      suffixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: IconButton(
                                            icon: Icon(
                                              controller.hidePassword.value
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: const Color.fromRGBO(
                                                  54, 50, 50, 0.5),
                                            ),
                                            onPressed: () {
                                              controller.passwordHide();
                                            }),
                                      ),
                                      prefix: const Padding(
                                        padding: EdgeInsets.only(left: 10),
                                      ),
                                      hintText: 'Enter password',
                                      label: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: Text(
                                          "Password",
                                          style: TextStyle(
                                              color: Colors.blueGrey.shade700,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      filled: true,
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(6),
                                      )),
                                )),
                          ],
                        )
                      ],
                    )),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: RichText(
                    text: TextSpan(
                        text: "Forgot password? ",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        children: [
                          TextSpan(text: ' ', children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {},
                                text: "Reset",
                                style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.2,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.lightBlueAccent.shade700,
                                ))
                          ])
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      String email = controller.emailController.text.trim();
                      String password =
                          controller.passwordController.text.trim();
                      AuthController.instance.login(email, password);
                    }
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(width, 60),
                      backgroundColor: Colors.lightBlueAccent.shade700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600)),
                  child: const Text("Login"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: RichText(
                    text: TextSpan(
                        text: "Don\'t have an account? ",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        children: [
                          TextSpan(text: ' ', children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.toNamed('/registration');
                                  },
                                text: "Signup",
                                style: TextStyle(
                                  fontSize: 14,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.2,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.lightBlueAccent.shade700,
                                ))
                          ])
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
