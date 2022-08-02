// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get name => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, List<String> topics) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, List<String> topics)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, List<String> topics)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String name, List<String> topics});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? topics = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topics: topics == freezed
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$SearchCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory _$$SearchCopyWith(_$Search value, $Res Function(_$Search) then) =
      __$$SearchCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<String> topics});
}

/// @nodoc
class __$$SearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$SearchCopyWith<$Res> {
  __$$SearchCopyWithImpl(_$Search _value, $Res Function(_$Search) _then)
      : super(_value, (v) => _then(v as _$Search));

  @override
  _$Search get _value => super._value as _$Search;

  @override
  $Res call({
    Object? name = freezed,
    Object? topics = freezed,
  }) {
    return _then(_$Search(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topics: topics == freezed
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$Search implements Search {
  const _$Search({required this.name, required final List<String> topics})
      : _topics = topics;

  @override
  final String name;
  final List<String> _topics;
  @override
  List<String> get topics {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'SearchEvent.search(name: $name, topics: $topics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Search &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_topics));

  @JsonKey(ignore: true)
  @override
  _$$SearchCopyWith<_$Search> get copyWith =>
      __$$SearchCopyWithImpl<_$Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, List<String> topics) search,
  }) {
    return search(name, topics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name, List<String> topics)? search,
  }) {
    return search?.call(name, topics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, List<String> topics)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(name, topics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements SearchEvent {
  const factory Search(
      {required final String name,
      required final List<String> topics}) = _$Search;

  @override
  String get name;
  @override
  List<String> get topics;
  @override
  @JsonKey(ignore: true)
  _$$SearchCopyWith<_$Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchFailure value) failure,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$SearchInitialCopyWith<$Res> {
  factory _$$SearchInitialCopyWith(
          _$SearchInitial value, $Res Function(_$SearchInitial) then) =
      __$$SearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchInitialCopyWith<$Res> {
  __$$SearchInitialCopyWithImpl(
      _$SearchInitial _value, $Res Function(_$SearchInitial) _then)
      : super(_value, (v) => _then(v as _$SearchInitial));

  @override
  _$SearchInitial get _value => super._value as _$SearchInitial;
}

/// @nodoc

class _$SearchInitial implements SearchInitial {
  const _$SearchInitial();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchFailure value) failure,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitial implements SearchState {
  const factory SearchInitial() = _$SearchInitial;
}

/// @nodoc
abstract class _$$SearchFailureCopyWith<$Res> {
  factory _$$SearchFailureCopyWith(
          _$SearchFailure value, $Res Function(_$SearchFailure) then) =
      __$$SearchFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchFailureCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchFailureCopyWith<$Res> {
  __$$SearchFailureCopyWithImpl(
      _$SearchFailure _value, $Res Function(_$SearchFailure) _then)
      : super(_value, (v) => _then(v as _$SearchFailure));

  @override
  _$SearchFailure get _value => super._value as _$SearchFailure;
}

/// @nodoc

class _$SearchFailure implements SearchFailure {
  const _$SearchFailure();

  @override
  String toString() {
    return 'SearchState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchFailure value) failure,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SearchFailure implements SearchState {
  const factory SearchFailure() = _$SearchFailure;
}

/// @nodoc
abstract class _$$SearchLoadingCopyWith<$Res> {
  factory _$$SearchLoadingCopyWith(
          _$SearchLoading value, $Res Function(_$SearchLoading) then) =
      __$$SearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchLoadingCopyWith<$Res> {
  __$$SearchLoadingCopyWithImpl(
      _$SearchLoading _value, $Res Function(_$SearchLoading) _then)
      : super(_value, (v) => _then(v as _$SearchLoading));

  @override
  _$SearchLoading get _value => super._value as _$SearchLoading;
}

/// @nodoc

class _$SearchLoading implements SearchLoading {
  const _$SearchLoading();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
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
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchFailure value) failure,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoading;
}

/// @nodoc
abstract class _$$SearchLoadedCopyWith<$Res> {
  factory _$$SearchLoadedCopyWith(
          _$SearchLoaded value, $Res Function(_$SearchLoaded) then) =
      __$$SearchLoadedCopyWithImpl<$Res>;
  $Res call({List<Place> places});
}

/// @nodoc
class __$$SearchLoadedCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$$SearchLoadedCopyWith<$Res> {
  __$$SearchLoadedCopyWithImpl(
      _$SearchLoaded _value, $Res Function(_$SearchLoaded) _then)
      : super(_value, (v) => _then(v as _$SearchLoaded));

  @override
  _$SearchLoaded get _value => super._value as _$SearchLoaded;

  @override
  $Res call({
    Object? places = freezed,
  }) {
    return _then(_$SearchLoaded(
      places: places == freezed
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$SearchLoaded implements SearchLoaded {
  const _$SearchLoaded({required final List<Place> places}) : _places = places;

  final List<Place> _places;
  @override
  List<Place> get places {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'SearchState.loaded(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoaded &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  _$$SearchLoadedCopyWith<_$SearchLoaded> get copyWith =>
      __$$SearchLoadedCopyWithImpl<_$SearchLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() failure,
    required TResult Function() loading,
    required TResult Function(List<Place> places) loaded,
  }) {
    return loaded(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
    TResult Function()? loading,
    TResult Function(List<Place> places)? loaded,
  }) {
    return loaded?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? failure,
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
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchFailure value) failure,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchFailure value)? failure,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchLoaded implements SearchState {
  const factory SearchLoaded({required final List<Place> places}) =
      _$SearchLoaded;

  List<Place> get places;
  @JsonKey(ignore: true)
  _$$SearchLoadedCopyWith<_$SearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
