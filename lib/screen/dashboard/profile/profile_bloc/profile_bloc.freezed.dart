// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfile value) getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$GetProfileCopyWith<$Res> {
  factory _$$GetProfileCopyWith(
          _$GetProfile value, $Res Function(_$GetProfile) then) =
      __$$GetProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$GetProfileCopyWith<$Res> {
  __$$GetProfileCopyWithImpl(
      _$GetProfile _value, $Res Function(_$GetProfile) _then)
      : super(_value, (v) => _then(v as _$GetProfile));

  @override
  _$GetProfile get _value => super._value as _$GetProfile;
}

/// @nodoc

class _$GetProfile implements GetProfile {
  const _$GetProfile();

  @override
  String toString() {
    return 'ProfileEvent.getProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProfile,
  }) {
    return getProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getProfile,
  }) {
    return getProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProfile value) getProfile,
  }) {
    return getProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
  }) {
    return getProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProfile value)? getProfile,
    required TResult orElse(),
  }) {
    if (getProfile != null) {
      return getProfile(this);
    }
    return orElse();
  }
}

abstract class GetProfile implements ProfileEvent {
  const factory GetProfile() = _$GetProfile;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place>? places, UserModel? user) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place>? places, UserModel? user)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place>? places, UserModel? user)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$$ProfileLoadingCopyWith<$Res> {
  factory _$$ProfileLoadingCopyWith(
          _$ProfileLoading value, $Res Function(_$ProfileLoading) then) =
      __$$ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$ProfileLoadingCopyWith<$Res> {
  __$$ProfileLoadingCopyWithImpl(
      _$ProfileLoading _value, $Res Function(_$ProfileLoading) _then)
      : super(_value, (v) => _then(v as _$ProfileLoading));

  @override
  _$ProfileLoading get _value => super._value as _$ProfileLoading;
}

/// @nodoc

class _$ProfileLoading implements ProfileLoading {
  const _$ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place>? places, UserModel? user) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place>? places, UserModel? user)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place>? places, UserModel? user)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoading;
}

/// @nodoc
abstract class _$$ProfileLoadedCopyWith<$Res> {
  factory _$$ProfileLoadedCopyWith(
          _$ProfileLoaded value, $Res Function(_$ProfileLoaded) then) =
      __$$ProfileLoadedCopyWithImpl<$Res>;
  $Res call({List<Place>? places, UserModel? user});
}

/// @nodoc
class __$$ProfileLoadedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$ProfileLoadedCopyWith<$Res> {
  __$$ProfileLoadedCopyWithImpl(
      _$ProfileLoaded _value, $Res Function(_$ProfileLoaded) _then)
      : super(_value, (v) => _then(v as _$ProfileLoaded));

  @override
  _$ProfileLoaded get _value => super._value as _$ProfileLoaded;

  @override
  $Res call({
    Object? places = freezed,
    Object? user = freezed,
  }) {
    return _then(_$ProfileLoaded(
      places: places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$ProfileLoaded implements ProfileLoaded {
  const _$ProfileLoaded({final List<Place>? places, required this.user})
      : _places = places;

  final List<Place>? _places;
  @override
  List<Place>? get places {
    final value = _places;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final UserModel? user;

  @override
  String toString() {
    return 'ProfileState.loaded(places: $places, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoaded &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_places),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$ProfileLoadedCopyWith<_$ProfileLoaded> get copyWith =>
      __$$ProfileLoadedCopyWithImpl<_$ProfileLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place>? places, UserModel? user) loaded,
  }) {
    return loaded(places, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place>? places, UserModel? user)? loaded,
  }) {
    return loaded?.call(places, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place>? places, UserModel? user)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(places, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileState {
  const factory ProfileLoaded(
      {final List<Place>? places,
      required final UserModel? user}) = _$ProfileLoaded;

  List<Place>? get places;
  UserModel? get user;
  @JsonKey(ignore: true)
  _$$ProfileLoadedCopyWith<_$ProfileLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
