part of 'register_bloc_bloc.dart';

@freezed
class RegisterBlocState with _$RegisterBlocState {
  const factory RegisterBlocState({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    required Option<Either<Failure, Unit>> registerOrFailureOption,
  }) = RegisterBlocInitial;

  factory RegisterBlocState.initial() => RegisterBlocState(
        name: "",
        email: "",
        password: "",
        passwordConfirmation: "",
        registerOrFailureOption: none(),
      );
}
