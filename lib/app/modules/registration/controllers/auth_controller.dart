
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;


  late Rx<User?> _user;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(firebaseAuth.currentUser);
    _user.bindStream(firebaseAuth.userChanges());
    ever(_user, _initScreen);
  }

  _initScreen(User? user) {
    if (user == null) {
      Get.offAllNamed("/login");
    } else {
      Get.offAllNamed("/home");
    }
  }

  register(String email, String password) async {
    try {
      print("Success");
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "Account registration failed",
        e.toString(),
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  login(String email, String password) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "Account login failed",
        e.toString(),
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  logout() async {
    await firebaseAuth.signOut();
  }
}
