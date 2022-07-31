// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'core/firebase_injectable_module.dart' as _i10;
import 'screen/auth/auth_bloc/auth_bloc.dart' as _i9;
import 'screen/auth/auth_repository/auth_repository.dart' as _i7;
import 'screen/auth/auth_repository/i_auth_repository.dart' as _i6;
import 'screen/auth/login/login_bloc/login_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthRepository>(() =>
      _i7.AuthRepository(get<_i5.GoogleSignIn>(), get<_i3.FirebaseAuth>()));
  gh.factory<_i8.LoginBloc>(() => _i8.LoginBloc(get<_i6.IAuthRepository>()));
  gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(get<_i6.IAuthRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i10.FirebaseInjectableModule {}
