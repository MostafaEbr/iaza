// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashStates<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splashLoading,
    required TResult Function(T data) splashSuccess,
    required TResult Function(String error) splashError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splashLoading,
    TResult? Function(T data)? splashSuccess,
    TResult? Function(String error)? splashError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splashLoading,
    TResult Function(T data)? splashSuccess,
    TResult Function(String error)? splashError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SplashLoading<T> value) splashLoading,
    required TResult Function(SplashSuccess<T> value) splashSuccess,
    required TResult Function(SplashError<T> value) splashError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SplashLoading<T> value)? splashLoading,
    TResult? Function(SplashSuccess<T> value)? splashSuccess,
    TResult? Function(SplashError<T> value)? splashError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SplashLoading<T> value)? splashLoading,
    TResult Function(SplashSuccess<T> value)? splashSuccess,
    TResult Function(SplashError<T> value)? splashError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStatesCopyWith<T, $Res> {
  factory $SplashStatesCopyWith(
          SplashStates<T> value, $Res Function(SplashStates<T>) then) =
      _$SplashStatesCopyWithImpl<T, $Res, SplashStates<T>>;
}

/// @nodoc
class _$SplashStatesCopyWithImpl<T, $Res, $Val extends SplashStates<T>>
    implements $SplashStatesCopyWith<T, $Res> {
  _$SplashStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$SplashStatesCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SplashStates<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splashLoading,
    required TResult Function(T data) splashSuccess,
    required TResult Function(String error) splashError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splashLoading,
    TResult? Function(T data)? splashSuccess,
    TResult? Function(String error)? splashError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splashLoading,
    TResult Function(T data)? splashSuccess,
    TResult Function(String error)? splashError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SplashLoading<T> value) splashLoading,
    required TResult Function(SplashSuccess<T> value) splashSuccess,
    required TResult Function(SplashError<T> value) splashError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SplashLoading<T> value)? splashLoading,
    TResult? Function(SplashSuccess<T> value)? splashSuccess,
    TResult? Function(SplashError<T> value)? splashError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SplashLoading<T> value)? splashLoading,
    TResult Function(SplashSuccess<T> value)? splashSuccess,
    TResult Function(SplashError<T> value)? splashError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements SplashStates<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SplashLoadingImplCopyWith<T, $Res> {
  factory _$$SplashLoadingImplCopyWith(_$SplashLoadingImpl<T> value,
          $Res Function(_$SplashLoadingImpl<T>) then) =
      __$$SplashLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SplashLoadingImplCopyWithImpl<T, $Res>
    extends _$SplashStatesCopyWithImpl<T, $Res, _$SplashLoadingImpl<T>>
    implements _$$SplashLoadingImplCopyWith<T, $Res> {
  __$$SplashLoadingImplCopyWithImpl(_$SplashLoadingImpl<T> _value,
      $Res Function(_$SplashLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SplashLoadingImpl<T> implements SplashLoading<T> {
  const _$SplashLoadingImpl();

  @override
  String toString() {
    return 'SplashStates<$T>.splashLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splashLoading,
    required TResult Function(T data) splashSuccess,
    required TResult Function(String error) splashError,
  }) {
    return splashLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splashLoading,
    TResult? Function(T data)? splashSuccess,
    TResult? Function(String error)? splashError,
  }) {
    return splashLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splashLoading,
    TResult Function(T data)? splashSuccess,
    TResult Function(String error)? splashError,
    required TResult orElse(),
  }) {
    if (splashLoading != null) {
      return splashLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SplashLoading<T> value) splashLoading,
    required TResult Function(SplashSuccess<T> value) splashSuccess,
    required TResult Function(SplashError<T> value) splashError,
  }) {
    return splashLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SplashLoading<T> value)? splashLoading,
    TResult? Function(SplashSuccess<T> value)? splashSuccess,
    TResult? Function(SplashError<T> value)? splashError,
  }) {
    return splashLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SplashLoading<T> value)? splashLoading,
    TResult Function(SplashSuccess<T> value)? splashSuccess,
    TResult Function(SplashError<T> value)? splashError,
    required TResult orElse(),
  }) {
    if (splashLoading != null) {
      return splashLoading(this);
    }
    return orElse();
  }
}

abstract class SplashLoading<T> implements SplashStates<T> {
  const factory SplashLoading() = _$SplashLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SplashSuccessImplCopyWith<T, $Res> {
  factory _$$SplashSuccessImplCopyWith(_$SplashSuccessImpl<T> value,
          $Res Function(_$SplashSuccessImpl<T>) then) =
      __$$SplashSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SplashSuccessImplCopyWithImpl<T, $Res>
    extends _$SplashStatesCopyWithImpl<T, $Res, _$SplashSuccessImpl<T>>
    implements _$$SplashSuccessImplCopyWith<T, $Res> {
  __$$SplashSuccessImplCopyWithImpl(_$SplashSuccessImpl<T> _value,
      $Res Function(_$SplashSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SplashSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SplashSuccessImpl<T> implements SplashSuccess<T> {
  const _$SplashSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'SplashStates<$T>.splashSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashSuccessImplCopyWith<T, _$SplashSuccessImpl<T>> get copyWith =>
      __$$SplashSuccessImplCopyWithImpl<T, _$SplashSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splashLoading,
    required TResult Function(T data) splashSuccess,
    required TResult Function(String error) splashError,
  }) {
    return splashSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splashLoading,
    TResult? Function(T data)? splashSuccess,
    TResult? Function(String error)? splashError,
  }) {
    return splashSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splashLoading,
    TResult Function(T data)? splashSuccess,
    TResult Function(String error)? splashError,
    required TResult orElse(),
  }) {
    if (splashSuccess != null) {
      return splashSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SplashLoading<T> value) splashLoading,
    required TResult Function(SplashSuccess<T> value) splashSuccess,
    required TResult Function(SplashError<T> value) splashError,
  }) {
    return splashSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SplashLoading<T> value)? splashLoading,
    TResult? Function(SplashSuccess<T> value)? splashSuccess,
    TResult? Function(SplashError<T> value)? splashError,
  }) {
    return splashSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SplashLoading<T> value)? splashLoading,
    TResult Function(SplashSuccess<T> value)? splashSuccess,
    TResult Function(SplashError<T> value)? splashError,
    required TResult orElse(),
  }) {
    if (splashSuccess != null) {
      return splashSuccess(this);
    }
    return orElse();
  }
}

abstract class SplashSuccess<T> implements SplashStates<T> {
  const factory SplashSuccess(final T data) = _$SplashSuccessImpl<T>;

  T get data;

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashSuccessImplCopyWith<T, _$SplashSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SplashErrorImplCopyWith<T, $Res> {
  factory _$$SplashErrorImplCopyWith(_$SplashErrorImpl<T> value,
          $Res Function(_$SplashErrorImpl<T>) then) =
      __$$SplashErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SplashErrorImplCopyWithImpl<T, $Res>
    extends _$SplashStatesCopyWithImpl<T, $Res, _$SplashErrorImpl<T>>
    implements _$$SplashErrorImplCopyWith<T, $Res> {
  __$$SplashErrorImplCopyWithImpl(
      _$SplashErrorImpl<T> _value, $Res Function(_$SplashErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SplashErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SplashErrorImpl<T> implements SplashError<T> {
  const _$SplashErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'SplashStates<$T>.splashError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashErrorImplCopyWith<T, _$SplashErrorImpl<T>> get copyWith =>
      __$$SplashErrorImplCopyWithImpl<T, _$SplashErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() splashLoading,
    required TResult Function(T data) splashSuccess,
    required TResult Function(String error) splashError,
  }) {
    return splashError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? splashLoading,
    TResult? Function(T data)? splashSuccess,
    TResult? Function(String error)? splashError,
  }) {
    return splashError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? splashLoading,
    TResult Function(T data)? splashSuccess,
    TResult Function(String error)? splashError,
    required TResult orElse(),
  }) {
    if (splashError != null) {
      return splashError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SplashLoading<T> value) splashLoading,
    required TResult Function(SplashSuccess<T> value) splashSuccess,
    required TResult Function(SplashError<T> value) splashError,
  }) {
    return splashError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SplashLoading<T> value)? splashLoading,
    TResult? Function(SplashSuccess<T> value)? splashSuccess,
    TResult? Function(SplashError<T> value)? splashError,
  }) {
    return splashError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SplashLoading<T> value)? splashLoading,
    TResult Function(SplashSuccess<T> value)? splashSuccess,
    TResult Function(SplashError<T> value)? splashError,
    required TResult orElse(),
  }) {
    if (splashError != null) {
      return splashError(this);
    }
    return orElse();
  }
}

abstract class SplashError<T> implements SplashStates<T> {
  const factory SplashError({required final String error}) =
      _$SplashErrorImpl<T>;

  String get error;

  /// Create a copy of SplashStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SplashErrorImplCopyWith<T, _$SplashErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
