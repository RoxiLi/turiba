import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:turiba/screen/auth/login/login_screen.dart';
import 'package:turiba/screen/auth/onboarding/onboarding_screen.dart';
import 'package:turiba/screen/auth/splash/splash_screen.dart';
import 'package:turiba/screen/auth/welcome/welcome_screen.dart';
import 'package:turiba/screen/dashboard/home/home_screen.dart';
import 'package:turiba/screen/dashboard/search/search_screen.dart';
import 'package:turiba/screen/dashboard/vr/vr_screen.dart';

import '../dashboard/home/model/place.dart';

final Map<String, WidgetBuilder> routes = {
  '/login': (_) => const LoginScreen(),
  '/home': (_) => const HomeScreen(),
  '/splash': (_) => const SplashScreen(),
  '/onboarding': (_) => const OnboardingScreen(),
  '/welcome': (_) => const WelcomeScreen(),
  '/search': (_) => const SearchScreen(),
  '/vr': (_) => VrScreen(
        place: Place(
          name: "Latacunga",
          stars: 5,
          likes: 2,
          description:
              "Latacunga, también conocida como San Vicente Mártir de Latacunga, es una ciudad ecuatoriana; cabecera cantonal del Cantón Latacunga y capital de la Provincia de Cotopaxi, así como la urbe más grande y poblada de la misma.",
          topics: [],
          image: "https://ec.viajandox.com/uploads/min_attractive_2409.jpg",
          id: "1",
          geoPoint: const GeoPoint(90, 78),
        ),
      ),
};
