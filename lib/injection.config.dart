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

import 'core/firebase_injectable_module.dart' as _i15;
import 'screen/auth/auth_bloc/auth_bloc.dart' as _i14;
import 'screen/auth/auth_repository/auth_repository.dart' as _i7;
import 'screen/auth/auth_repository/i_auth_repository.dart' as _i6;
import 'screen/auth/login/login_bloc/login_bloc.dart' as _i10;
import 'screen/dashboard/home/place_repository/i_place_repository.dart' as _i8;
import 'screen/dashboard/home/place_repository/place_repository.dart' as _i9;
import 'screen/dashboard/home/places_bloc/places_bloc.dart' as _i11;
import 'screen/dashboard/profile/profile_bloc/profile_bloc.dart' as _i12;
import 'screen/dashboard/search/search_bloc/search_bloc.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.IAuthRepository>(() => _i7.AuthRepository(
      get<_i5.GoogleSignIn>(),
      get<_i3.FirebaseAuth>(),
      get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i8.IPlaceRepository>(
      () => _i9.PlaceRespository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i10.LoginBloc>(() => _i10.LoginBloc(get<_i6.IAuthRepository>()));
  gh.factory<_i11.PlacesBloc>(
      () => _i11.PlacesBloc(get<_i8.IPlaceRepository>()));
  gh.factory<_i12.ProfileBloc>(() => _i12.ProfileBloc(
      get<_i6.IAuthRepository>(), get<_i8.IPlaceRepository>()));
  gh.factory<_i13.SearchBloc>(
      () => _i13.SearchBloc(get<_i8.IPlaceRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i6.IAuthRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
