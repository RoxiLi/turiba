import 'package:flutter/material.dart';
import 'package:turiba/screen/auth/login/login_screen.dart';
import 'package:turiba/screen/auth/onboarding/onboarding_screen.dart';
import 'package:turiba/screen/auth/splash/splash_screen.dart';
import 'package:turiba/screen/auth/welcome/welcome_screen.dart';
import 'package:turiba/screen/dashboard/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (_) => const LoginScreen(),
  '/home': (_) => const HomeScreen(),
  '/splash': (_) => const SplashScreen(),
  '/onboarding': (_) => const OnboardingScreen(),
  '/welcome': (_) => const WelcomeScreen(),
};
