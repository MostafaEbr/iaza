// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPagination,
    required TResult Function(List<ProductModel> productList) success,
    required TResult Function(ApiErrorModel validation) validation,
    required TResult Function(ApiErrorModel error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPagination,
    TResult? Function(List<ProductModel> productList)? success,
    TResult? Function(ApiErrorModel validation)? validation,
    TResult? Function(ApiErrorModel error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPagination,
    TResult Function(List<ProductModel> productList)? success,
    TResult Function(ApiErrorModel validation)? validation,
    TResult Function(ApiErrorModel error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingPagination value) loadingPagination,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Faliure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingPagination value)? loadingPagination,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Faliure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingPagination value)? loadingPagination,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Faliure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPagination,
    required TResult Function(List<ProductModel> productList) success,
    required TResult Function(ApiErrorModel validation) validation,
    required TResult Function(ApiErrorModel error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPagination,
    TResult? Function(List<ProductModel> productList)? success,
    TResult? Function(ApiErrorModel validation)? validation,
    TResult? Function(ApiErrorModel error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPagination,
    TResult Function(List<ProductModel> productList)? success,
    TResult Function(ApiErrorModel validation)? validation,
    TResult Function(ApiErrorModel error)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingPagination value) loadingPagination,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Faliure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingPagination value)? loadingPagination,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Faliure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingPagination value)? loadingPagination,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Faliure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPagination,
    required TResult Function(List<ProductModel> productList) success,
    required TResult Function(ApiErrorModel validation) validation,
    required TResult Function(ApiErrorModel error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPagination,
    TResult? Function(List<ProductModel> productList)? success,
    TResult? Function(ApiErrorModel validation)? validation,
    TResult? Function(ApiErrorModel error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPagination,
    TResult Function(List<ProductModel> productList)? success,
    TResult Function(ApiErrorModel validation)? validation,
    TResult Function(ApiErrorModel error)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingPagination value) loadingPagination,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Faliure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingPagination value)? loadingPagination,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Faliure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingPagination value)? loadingPagination,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Faliure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProductsState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingPaginationImplCopyWith<$Res> {
  factory _$$LoadingPaginationImplCopyWith(_$LoadingPaginationImpl value,
          $Res Function(_$LoadingPaginationImpl) then) =
      __$$LoadingPaginationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingPaginationImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$LoadingPaginationImpl>
    implements _$$LoadingPaginationImplCopyWith<$Res> {
  __$$LoadingPaginationImplCopyWithImpl(_$LoadingPaginationImpl _value,
      $Res Function(_$LoadingPaginationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingPaginationImpl implements LoadingPagination {
  const _$LoadingPaginationImpl();

  @override
  String toString() {
    return 'ProductsState.loadingPagination()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingPaginationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPagination,
    required TResult Function(List<ProductModel> productList) success,
    required TResult Function(ApiErrorModel validation) validation,
    required TResult Function(ApiErrorModel error) failure,
  }) {
    return loadingPagination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPagination,
    TResult? Function(List<ProductModel> productList)? success,
    TResult? Function(ApiErrorModel validation)? validation,
    TResult? Function(ApiErrorModel error)? failure,
  }) {
    return loadingPagination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPagination,
    TResult Function(List<ProductModel> productList)? success,
    TResult Function(ApiErrorModel validation)? validation,
    TResult Function(ApiErrorModel error)? failure,
    required TResult orElse(),
  }) {
    if (loadingPagination != null) {
      return loadingPagination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingPagination value) loadingPagination,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Faliure value) failure,
  }) {
    return loadingPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingPagination value)? loadingPagination,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Faliure value)? failure,
  }) {
    return loadingPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingPagination value)? loadingPagination,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Faliure value)? failure,
    required TResult orElse(),
  }) {
    if (loadingPagination != null) {
      return loadingPagination(this);
    }
    return orElse();
  }
}

abstract class LoadingPagination implements ProductsState {
  const factory LoadingPagination() = _$LoadingPaginationImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> productList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
  }) {
    return _then(_$SuccessImpl(
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required final List<ProductModel> productList})
      : _productList = productList;

  final List<ProductModel> _productList;
  @override
  List<ProductModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  String toString() {
    return 'ProductsState.success(productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productList));

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPagination,
    required TResult Function(List<ProductModel> productList) success,
    required TResult Function(ApiErrorModel validation) validation,
    required TResult Function(ApiErrorModel error) failure,
  }) {
    return success(productList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPagination,
    TResult? Function(List<ProductModel> productList)? success,
    TResult? Function(ApiErrorModel validation)? validation,
    TResult? Function(ApiErrorModel error)? failure,
  }) {
    return success?.call(productList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPagination,
    TResult Function(List<ProductModel> productList)? success,
    TResult Function(ApiErrorModel validation)? validation,
    TResult Function(ApiErrorModel error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(productList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingPagination value) loadingPagination,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Faliure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingPagination value)? loadingPagination,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Faliure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingPagination value)? loadingPagination,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Faliure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ProductsState {
  const factory Success({required final List<ProductModel> productList}) =
      _$SuccessImpl;

  List<ProductModel> get productList;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationImplCopyWith<$Res> {
  factory _$$ValidationImplCopyWith(
          _$ValidationImpl value, $Res Function(_$ValidationImpl) then) =
      __$$ValidationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel validation});
}

/// @nodoc
class __$$ValidationImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ValidationImpl>
    implements _$$ValidationImplCopyWith<$Res> {
  __$$ValidationImplCopyWithImpl(
      _$ValidationImpl _value, $Res Function(_$ValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validation = null,
  }) {
    return _then(_$ValidationImpl(
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ValidationImpl implements Validation {
  const _$ValidationImpl({required this.validation});

  @override
  final ApiErrorModel validation;

  @override
  String toString() {
    return 'ProductsState.validation(validation: $validation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationImpl &&
            (identical(other.validation, validation) ||
                other.validation == validation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validation);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationImplCopyWith<_$ValidationImpl> get copyWith =>
      __$$ValidationImplCopyWithImpl<_$ValidationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPagination,
    required TResult Function(List<ProductModel> productList) success,
    required TResult Function(ApiErrorModel validation) validation,
    required TResult Function(ApiErrorModel error) failure,
  }) {
    return validation(this.validation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPagination,
    TResult? Function(List<ProductModel> productList)? success,
    TResult? Function(ApiErrorModel validation)? validation,
    TResult? Function(ApiErrorModel error)? failure,
  }) {
    return validation?.call(this.validation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPagination,
    TResult Function(List<ProductModel> productList)? success,
    TResult Function(ApiErrorModel validation)? validation,
    TResult Function(ApiErrorModel error)? failure,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this.validation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingPagination value) loadingPagination,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Faliure value) failure,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingPagination value)? loadingPagination,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Faliure value)? failure,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingPagination value)? loadingPagination,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Faliure value)? failure,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class Validation implements ProductsState {
  const factory Validation({required final ApiErrorModel validation}) =
      _$ValidationImpl;

  ApiErrorModel get validation;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationImplCopyWith<_$ValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FaliureImplCopyWith<$Res> {
  factory _$$FaliureImplCopyWith(
          _$FaliureImpl value, $Res Function(_$FaliureImpl) then) =
      __$$FaliureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$FaliureImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$FaliureImpl>
    implements _$$FaliureImplCopyWith<$Res> {
  __$$FaliureImplCopyWithImpl(
      _$FaliureImpl _value, $Res Function(_$FaliureImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FaliureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$FaliureImpl implements Faliure {
  const _$FaliureImpl({required this.error});

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'ProductsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaliureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FaliureImplCopyWith<_$FaliureImpl> get copyWith =>
      __$$FaliureImplCopyWithImpl<_$FaliureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPagination,
    required TResult Function(List<ProductModel> productList) success,
    required TResult Function(ApiErrorModel validation) validation,
    required TResult Function(ApiErrorModel error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPagination,
    TResult? Function(List<ProductModel> productList)? success,
    TResult? Function(ApiErrorModel validation)? validation,
    TResult? Function(ApiErrorModel error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPagination,
    TResult Function(List<ProductModel> productList)? success,
    TResult Function(ApiErrorModel validation)? validation,
    TResult Function(ApiErrorModel error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingPagination value) loadingPagination,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Faliure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingPagination value)? loadingPagination,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Faliure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingPagination value)? loadingPagination,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Faliure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Faliure implements ProductsState {
  const factory Faliure({required final ApiErrorModel error}) = _$FaliureImpl;

  ApiErrorModel get error;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FaliureImplCopyWith<_$FaliureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
