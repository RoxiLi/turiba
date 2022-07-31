// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlacesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaces,
    required TResult Function() getFavoritesPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getFavoritesPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getFavoritesPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaces value) getPlaces,
    required TResult Function(GetFavoritesPlaces value) getFavoritesPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPlaces value)? getPlaces,
    TResult Function(GetFavoritesPlaces value)? getFavoritesPlaces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaces value)? getPlaces,
    TResult Function(GetFavoritesPlaces value)? getFavoritesPlaces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesEventCopyWith<$Res> {
  factory $PlacesEventCopyWith(
          PlacesEvent value, $Res Function(PlacesEvent) then) =
      _$PlacesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesEventCopyWithImpl<$Res> implements $PlacesEventCopyWith<$Res> {
  _$PlacesEventCopyWithImpl(this._value, this._then);

  final PlacesEvent _value;
  // ignore: unused_field
  final $Res Function(PlacesEvent) _then;
}

/// @nodoc
abstract class _$$GetPlacesCopyWith<$Res> {
  factory _$$GetPlacesCopyWith(
          _$GetPlaces value, $Res Function(_$GetPlaces) then) =
      __$$GetPlacesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlacesCopyWithImpl<$Res> extends _$PlacesEventCopyWithImpl<$Res>
    implements _$$GetPlacesCopyWith<$Res> {
  __$$GetPlacesCopyWithImpl(
      _$GetPlaces _value, $Res Function(_$GetPlaces) _then)
      : super(_value, (v) => _then(v as _$GetPlaces));

  @override
  _$GetPlaces get _value => super._value as _$GetPlaces;
}

/// @nodoc

class _$GetPlaces implements GetPlaces {
  const _$GetPlaces();

  @override
  String toString() {
    return 'PlacesEvent.getPlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaces,
    required TResult Function() getFavoritesPlaces,
  }) {
    return getPlaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getFavoritesPlaces,
  }) {
    return getPlaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getFavoritesPlaces,
    required TResult orElse(),
  }) {
    if (getPlaces != null) {
      return getPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaces value) getPlaces,
    required TResult Function(GetFavoritesPlaces value) getFavoritesPlaces,
  }) {
    return getPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPlaces value)? getPlaces,
    TResult Function(GetFavoritesPlaces value)? getFavoritesPlaces,
  }) {
    return getPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaces value)? getPlaces,
    TResult Function(GetFavoritesPlaces value)? getFavoritesPlaces,
    required TResult orElse(),
  }) {
    if (getPlaces != null) {
      return getPlaces(this);
    }
    return orElse();
  }
}

abstract class GetPlaces implements PlacesEvent {
  const factory GetPlaces() = _$GetPlaces;
}

/// @nodoc
abstract class _$$GetFavoritesPlacesCopyWith<$Res> {
  factory _$$GetFavoritesPlacesCopyWith(_$GetFavoritesPlaces value,
          $Res Function(_$GetFavoritesPlaces) then) =
      __$$GetFavoritesPlacesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoritesPlacesCopyWithImpl<$Res>
    extends _$PlacesEventCopyWithImpl<$Res>
    implements _$$GetFavoritesPlacesCopyWith<$Res> {
  __$$GetFavoritesPlacesCopyWithImpl(
      _$GetFavoritesPlaces _value, $Res Function(_$GetFavoritesPlaces) _then)
      : super(_value, (v) => _then(v as _$GetFavoritesPlaces));

  @override
  _$GetFavoritesPlaces get _value => super._value as _$GetFavoritesPlaces;
}

/// @nodoc

class _$GetFavoritesPlaces implements GetFavoritesPlaces {
  const _$GetFavoritesPlaces();

  @override
  String toString() {
    return 'PlacesEvent.getFavoritesPlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoritesPlaces);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaces,
    required TResult Function() getFavoritesPlaces,
  }) {
    return getFavoritesPlaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getFavoritesPlaces,
  }) {
    return getFavoritesPlaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getFavoritesPlaces,
    required TResult orElse(),
  }) {
    if (getFavoritesPlaces != null) {
      return getFavoritesPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPlaces value) getPlaces,
    required TResult Function(GetFavoritesPlaces value) getFavoritesPlaces,
  }) {
    return getFavoritesPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetPlaces value)? getPlaces,
    TResult Function(GetFavoritesPlaces value)? getFavoritesPlaces,
  }) {
    return getFavoritesPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPlaces value)? getPlaces,
    TResult Function(GetFavoritesPlaces value)? getFavoritesPlaces,
    required TResult orElse(),
  }) {
    if (getFavoritesPlaces != null) {
      return getFavoritesPlaces(this);
    }
    return orElse();
  }
}

abstract class GetFavoritesPlaces implements PlacesEvent {
  const factory GetFavoritesPlaces() = _$GetFavoritesPlaces;
}

/// @nodoc
mixin _$PlacesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesStateCopyWith<$Res> {
  factory $PlacesStateCopyWith(
          PlacesState value, $Res Function(PlacesState) then) =
      _$PlacesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesStateCopyWithImpl<$Res> implements $PlacesStateCopyWith<$Res> {
  _$PlacesStateCopyWithImpl(this._value, this._then);

  final PlacesState _value;
  // ignore: unused_field
  final $Res Function(PlacesState) _then;
}

/// @nodoc
abstract class _$$PlacesLoadingCopyWith<$Res> {
  factory _$$PlacesLoadingCopyWith(
          _$PlacesLoading value, $Res Function(_$PlacesLoading) then) =
      __$$PlacesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlacesLoadingCopyWithImpl<$Res>
    extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlacesLoadingCopyWith<$Res> {
  __$$PlacesLoadingCopyWithImpl(
      _$PlacesLoading _value, $Res Function(_$PlacesLoading) _then)
      : super(_value, (v) => _then(v as _$PlacesLoading));

  @override
  _$PlacesLoading get _value => super._value as _$PlacesLoading;
}

/// @nodoc

class _$PlacesLoading implements PlacesLoading {
  const _$PlacesLoading();

  @override
  String toString() {
    return 'PlacesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlacesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
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
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PlacesLoading implements PlacesState {
  const factory PlacesLoading() = _$PlacesLoading;
}

/// @nodoc
abstract class _$$PlacesLoadedCopyWith<$Res> {
  factory _$$PlacesLoadedCopyWith(
          _$PlacesLoaded value, $Res Function(_$PlacesLoaded) then) =
      __$$PlacesLoadedCopyWithImpl<$Res>;
  $Res call({List<Place> places});
}

/// @nodoc
class __$$PlacesLoadedCopyWithImpl<$Res> extends _$PlacesStateCopyWithImpl<$Res>
    implements _$$PlacesLoadedCopyWith<$Res> {
  __$$PlacesLoadedCopyWithImpl(
      _$PlacesLoaded _value, $Res Function(_$PlacesLoaded) _then)
      : super(_value, (v) => _then(v as _$PlacesLoaded));

  @override
  _$PlacesLoaded get _value => super._value as _$PlacesLoaded;

  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_$PlacesLoaded(
      places: places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$PlacesLoaded implements PlacesLoaded {
  const _$PlacesLoaded({required final List<Place> places}) : _places = places;

  final List<Place> _places;
  @override
  List<Place> get places {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlacesState.loaded(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacesLoaded &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  _$$PlacesLoadedCopyWith<_$PlacesLoaded> get copyWith =>
      __$$PlacesLoadedCopyWithImpl<_$PlacesLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) {
    return loaded(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) {
    return loaded?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlacesLoading value) loading,
    required TResult Function(PlacesLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlacesLoading value)? loading,
    TResult Function(PlacesLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class PlacesLoaded implements PlacesState {
  const factory PlacesLoaded({required final List<Place> places}) =
      _$PlacesLoaded;

  List<Place> get places;
  @JsonKey(ignore: true)
  _$$PlacesLoadedCopyWith<_$PlacesLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
