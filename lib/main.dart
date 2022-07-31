import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/injection.dart';
import 'package:turiba/screen/auth/auth_bloc/auth_bloc.dart';
import 'package:turiba/utils/firebase_config.dart';

import 'screen/core/routes.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.pink, // status bar color
  ));
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp(
    options: DefaultFirebaseConfig.platformOptions,
    name: 'turiba-d29c8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>()
        ..add(
          const AuthEvent.checkAuth(),
        ),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Turiba',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/splash',
        routes: routes,
      ),
    );
  }
}
