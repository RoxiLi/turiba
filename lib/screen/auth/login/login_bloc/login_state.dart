part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String username,
    required String password,
    required bool loading,
    required Option<Either<Failure, UserModel>> loginOrFailureOption,
    required bool showPassword,
    required bool showErrors,
  }) = LoginInitial;

  factory LoginState.initial() => LoginState(
        username: "",
        password: "",
        loading: false,
        showPassword: false,
        loginOrFailureOption: none(),
        showErrors: false,
      );
}
