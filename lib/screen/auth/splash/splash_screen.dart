import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:turiba/screen/auth/auth_bloc/auth_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
      state.whenOrNull(
        notAuthenticated: () => Navigator.pushReplacementNamed(
          context,
          "/welcome",
        ),
        authenticated: () => Navigator.pushReplacementNamed(
          context,
          "/home",
        ),
      );
    }, builder: (context, state) {
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
    });
  }
}
