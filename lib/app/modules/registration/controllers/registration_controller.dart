import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trip/app/modules/splash/controllers/auth_controller.dart';

class RegistrationController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;
  final isLoading = false.obs;

  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  late CollectionReference collectionReference;

  @override
  void onInit() {
    super.onInit();
    collectionReference = firebaseFirestore.collection("trip_users");
  }

  passwordHide() {
    hidePassword.value = !hidePassword.value;
    update();
  }

  confirmPasswordHide() {
    hideConfirmPassword.value = !hideConfirmPassword.value;
    update();
  }

  registerUser(String email, String password) async {
    try {
      isLoading.value = true;
      update();
      await AuthController.instance.firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .whenComplete(() {
            print("object");
        collectionReference.add({"email": email, "password": password});
      });
    } catch (e) {
      Get.snackbar(
        "Account registration failed",
        e.toString(),
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
      );
    }finally{
    isLoading.value = false;
    update();
    }
  }
}
