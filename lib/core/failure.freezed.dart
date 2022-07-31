// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, (v) => _then(v as _$ServerError));

  @override
  _$ServerError get _value => super._value as _$ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'Failure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements Failure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$UnauthenticatedCopyWith<$Res> {
  factory _$$UnauthenticatedCopyWith(
          _$Unauthenticated value, $Res Function(_$Unauthenticated) then) =
      __$$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$UnauthenticatedCopyWith<$Res> {
  __$$UnauthenticatedCopyWithImpl(
      _$Unauthenticated _value, $Res Function(_$Unauthenticated) _then)
      : super(_value, (v) => _then(v as _$Unauthenticated));

  @override
  _$Unauthenticated get _value => super._value as _$Unauthenticated;
}

/// @nodoc

class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'Failure.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements Failure {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class _$$UnexpectedCopyWith<$Res> {
  factory _$$UnexpectedCopyWith(
          _$Unexpected value, $Res Function(_$Unexpected) then) =
      __$$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$UnexpectedCopyWith<$Res> {
  __$$UnexpectedCopyWithImpl(
      _$Unexpected _value, $Res Function(_$Unexpected) _then)
      : super(_value, (v) => _then(v as _$Unexpected));

  @override
  _$Unexpected get _value => super._value as _$Unexpected;
}

/// @nodoc

class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'Failure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements Failure {
  const factory Unexpected() = _$Unexpected;
}

/// @nodoc
abstract class _$$UserOrPasswordIncorrectCopyWith<$Res> {
  factory _$$UserOrPasswordIncorrectCopyWith(_$UserOrPasswordIncorrect value,
          $Res Function(_$UserOrPasswordIncorrect) then) =
      __$$UserOrPasswordIncorrectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserOrPasswordIncorrectCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$UserOrPasswordIncorrectCopyWith<$Res> {
  __$$UserOrPasswordIncorrectCopyWithImpl(_$UserOrPasswordIncorrect _value,
      $Res Function(_$UserOrPasswordIncorrect) _then)
      : super(_value, (v) => _then(v as _$UserOrPasswordIncorrect));

  @override
  _$UserOrPasswordIncorrect get _value =>
      super._value as _$UserOrPasswordIncorrect;
}

/// @nodoc

class _$UserOrPasswordIncorrect implements UserOrPasswordIncorrect {
  const _$UserOrPasswordIncorrect();

  @override
  String toString() {
    return 'Failure.userOrPasswordIncorrect()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOrPasswordIncorrect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) {
    return userOrPasswordIncorrect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) {
    return userOrPasswordIncorrect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (userOrPasswordIncorrect != null) {
      return userOrPasswordIncorrect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) {
    return userOrPasswordIncorrect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) {
    return userOrPasswordIncorrect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (userOrPasswordIncorrect != null) {
      return userOrPasswordIncorrect(this);
    }
    return orElse();
  }
}

abstract class UserOrPasswordIncorrect implements Failure {
  const factory UserOrPasswordIncorrect() = _$UserOrPasswordIncorrect;
}

/// @nodoc
abstract class _$$NotAuthenticatedCopyWith<$Res> {
  factory _$$NotAuthenticatedCopyWith(
          _$NotAuthenticated value, $Res Function(_$NotAuthenticated) then) =
      __$$NotAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotAuthenticatedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$NotAuthenticatedCopyWith<$Res> {
  __$$NotAuthenticatedCopyWithImpl(
      _$NotAuthenticated _value, $Res Function(_$NotAuthenticated) _then)
      : super(_value, (v) => _then(v as _$NotAuthenticated));

  @override
  _$NotAuthenticated get _value => super._value as _$NotAuthenticated;
}

/// @nodoc

class _$NotAuthenticated implements NotAuthenticated {
  const _$NotAuthenticated();

  @override
  String toString() {
    return 'Failure.notAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) {
    return notAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) {
    return notAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class NotAuthenticated implements Failure {
  const factory NotAuthenticated() = _$NotAuthenticated;
}

/// @nodoc
abstract class _$$CanceledByUserCopyWith<$Res> {
  factory _$$CanceledByUserCopyWith(
          _$CanceledByUser value, $Res Function(_$CanceledByUser) then) =
      __$$CanceledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanceledByUserCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$CanceledByUserCopyWith<$Res> {
  __$$CanceledByUserCopyWithImpl(
      _$CanceledByUser _value, $Res Function(_$CanceledByUser) _then)
      : super(_value, (v) => _then(v as _$CanceledByUser));

  @override
  _$CanceledByUser get _value => super._value as _$CanceledByUser;
}

/// @nodoc

class _$CanceledByUser implements CanceledByUser {
  const _$CanceledByUser();

  @override
  String toString() {
    return 'Failure.canceledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CanceledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) {
    return canceledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) {
    return canceledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (canceledByUser != null) {
      return canceledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) {
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) {
    return canceledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class CanceledByUser implements Failure {
  const factory CanceledByUser() = _$CanceledByUser;
}

/// @nodoc
abstract class _$$AccountAlreadyExistsCopyWith<$Res> {
  factory _$$AccountAlreadyExistsCopyWith(_$AccountAlreadyExists value,
          $Res Function(_$AccountAlreadyExists) then) =
      __$$AccountAlreadyExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountAlreadyExistsCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$AccountAlreadyExistsCopyWith<$Res> {
  __$$AccountAlreadyExistsCopyWithImpl(_$AccountAlreadyExists _value,
      $Res Function(_$AccountAlreadyExists) _then)
      : super(_value, (v) => _then(v as _$AccountAlreadyExists));

  @override
  _$AccountAlreadyExists get _value => super._value as _$AccountAlreadyExists;
}

/// @nodoc

class _$AccountAlreadyExists implements AccountAlreadyExists {
  const _$AccountAlreadyExists();

  @override
  String toString() {
    return 'Failure.accountAlreadyExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountAlreadyExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() unauthenticated,
    required TResult Function() unexpected,
    required TResult Function() userOrPasswordIncorrect,
    required TResult Function() notAuthenticated,
    required TResult Function() canceledByUser,
    required TResult Function() accountAlreadyExists,
  }) {
    return accountAlreadyExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
  }) {
    return accountAlreadyExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? unauthenticated,
    TResult Function()? unexpected,
    TResult Function()? userOrPasswordIncorrect,
    TResult Function()? notAuthenticated,
    TResult Function()? canceledByUser,
    TResult Function()? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (accountAlreadyExists != null) {
      return accountAlreadyExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Unexpected value) unexpected,
    required TResult Function(UserOrPasswordIncorrect value)
        userOrPasswordIncorrect,
    required TResult Function(NotAuthenticated value) notAuthenticated,
    required TResult Function(CanceledByUser value) canceledByUser,
    required TResult Function(AccountAlreadyExists value) accountAlreadyExists,
  }) {
    return accountAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
  }) {
    return accountAlreadyExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Unexpected value)? unexpected,
    TResult Function(UserOrPasswordIncorrect value)? userOrPasswordIncorrect,
    TResult Function(NotAuthenticated value)? notAuthenticated,
    TResult Function(CanceledByUser value)? canceledByUser,
    TResult Function(AccountAlreadyExists value)? accountAlreadyExists,
    required TResult orElse(),
  }) {
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class AccountAlreadyExists implements Failure {
  const factory AccountAlreadyExists() = _$AccountAlreadyExists;
}
