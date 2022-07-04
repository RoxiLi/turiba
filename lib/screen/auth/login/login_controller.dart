import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:turiba/utils/app_string.dart';
import 'package:turiba/utils/global.dart';
import 'package:turiba/utils/widget/app_snackbar.dart';

class LoginController extends GetxController {
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;

  RxBool emailValidation = false.obs;
  RxBool emailValidation1 = false.obs;
  RxBool passwordValidation = false.obs;
  RxBool passwordValidation1 = false.obs;
  RxBool allValidation = false.obs;
  RxBool isLoading = false.obs;


}
