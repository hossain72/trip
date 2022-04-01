import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:trip/app/modules/splash/controllers/auth_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        builder: (_) => Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image:
                    AssetImage('assets/images/jpg/splash.jpg'),
                    fit: BoxFit.fill)),
          ),
        ));
  }
}

