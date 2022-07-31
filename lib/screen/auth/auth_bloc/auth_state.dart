part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.notAuthenticated() = NotAuthenticated;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.loading() = Loading;
}
