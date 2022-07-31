import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: 100,
        width: 100,
        child: Lottie.asset(
          "assets/lottie/loading.json",
        ),
      )),
    );
  }
}
