import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  Rx<TextEditingController> nameController = TextEditingController().obs;
  Rx<TextEditingController> emailController = TextEditingController().obs;
  Rx<TextEditingController> passwordController = TextEditingController().obs;

  RxBool nameValidation = false.obs;
  RxBool emailValidation = false.obs;
  RxBool emailValidation1 = false.obs;
  RxBool passwordValidation = false.obs;
  RxBool passwordValidation1 = false.obs;
  RxBool allValidation = false.obs;

  RxBool isLoading = false.obs;
}
