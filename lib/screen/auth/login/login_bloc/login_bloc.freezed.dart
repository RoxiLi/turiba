// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$$LoginCopyWith<$Res> {
  factory _$$LoginCopyWith(_$Login value, $Res Function(_$Login) then) =
      __$$LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$$LoginCopyWith<$Res> {
  __$$LoginCopyWithImpl(_$Login _value, $Res Function(_$Login) _then)
      : super(_value, (v) => _then(v as _$Login));

  @override
  _$Login get _value => super._value as _$Login;
}

/// @nodoc

class _$Login implements Login {
  const _$Login();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LoginEvent {
  const factory Login() = _$Login;
}

/// @nodoc
mixin _$LoginState {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<Failure, UserModel>> get loginOrFailureOption =>
      throw _privateConstructorUsedError;
  bool get showPassword => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String password,
      bool loading,
      Option<Either<Failure, UserModel>> loginOrFailureOption,
      bool showPassword,
      bool showErrors});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? loginOrFailureOption = freezed,
    Object? showPassword = freezed,
    Object? showErrors = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginOrFailureOption: loginOrFailureOption == freezed
          ? _value.loginOrFailureOption
          : loginOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserModel>>,
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$LoginInitialCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginInitialCopyWith(
          _$LoginInitial value, $Res Function(_$LoginInitial) then) =
      __$$LoginInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String password,
      bool loading,
      Option<Either<Failure, UserModel>> loginOrFailureOption,
      bool showPassword,
      bool showErrors});
}

/// @nodoc
class __$$LoginInitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginInitialCopyWith<$Res> {
  __$$LoginInitialCopyWithImpl(
      _$LoginInitial _value, $Res Function(_$LoginInitial) _then)
      : super(_value, (v) => _then(v as _$LoginInitial));

  @override
  _$LoginInitial get _value => super._value as _$LoginInitial;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? loading = freezed,
    Object? loginOrFailureOption = freezed,
    Object? showPassword = freezed,
    Object? showErrors = freezed,
  }) {
    return _then(_$LoginInitial(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loginOrFailureOption: loginOrFailureOption == freezed
          ? _value.loginOrFailureOption
          : loginOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, UserModel>>,
      showPassword: showPassword == freezed
          ? _value.showPassword
          : showPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginInitial implements LoginInitial {
  const _$LoginInitial(
      {required this.username,
      required this.password,
      required this.loading,
      required this.loginOrFailureOption,
      required this.showPassword,
      required this.showErrors});

  @override
  final String username;
  @override
  final String password;
  @override
  final bool loading;
  @override
  final Option<Either<Failure, UserModel>> loginOrFailureOption;
  @override
  final bool showPassword;
  @override
  final bool showErrors;

  @override
  String toString() {
    return 'LoginState(username: $username, password: $password, loading: $loading, loginOrFailureOption: $loginOrFailureOption, showPassword: $showPassword, showErrors: $showErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInitial &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.loginOrFailureOption, loginOrFailureOption) &&
            const DeepCollectionEquality()
                .equals(other.showPassword, showPassword) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(loginOrFailureOption),
      const DeepCollectionEquality().hash(showPassword),
      const DeepCollectionEquality().hash(showErrors));

  @JsonKey(ignore: true)
  @override
  _$$LoginInitialCopyWith<_$LoginInitial> get copyWith =>
      __$$LoginInitialCopyWithImpl<_$LoginInitial>(this, _$identity);
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial(
      {required final String username,
      required final String password,
      required final bool loading,
      required final Option<Either<Failure, UserModel>> loginOrFailureOption,
      required final bool showPassword,
      required final bool showErrors}) = _$LoginInitial;

  @override
  String get username;
  @override
  String get password;
  @override
  bool get loading;
  @override
  Option<Either<Failure, UserModel>> get loginOrFailureOption;
  @override
  bool get showPassword;
  @override
  bool get showErrors;
  @override
  @JsonKey(ignore: true)
  _$$LoginInitialCopyWith<_$LoginInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
