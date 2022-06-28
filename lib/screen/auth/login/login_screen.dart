import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turiba/screen/auth/login/login_controller.dart';
// import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final LoginController con = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text(
          "Tes",
          // style: GoogleFonts.ptMono(),
        ),
      ),
    );
  }
}
