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
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
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
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
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
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
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
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
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
    extends _$CartStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
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
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
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
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CartState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadingAddItemToCartImplCopyWith<$Res> {
  factory _$$LoadingAddItemToCartImplCopyWith(_$LoadingAddItemToCartImpl value,
          $Res Function(_$LoadingAddItemToCartImpl) then) =
      __$$LoadingAddItemToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isBuyNow});
}

/// @nodoc
class __$$LoadingAddItemToCartImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingAddItemToCartImpl>
    implements _$$LoadingAddItemToCartImplCopyWith<$Res> {
  __$$LoadingAddItemToCartImplCopyWithImpl(_$LoadingAddItemToCartImpl _value,
      $Res Function(_$LoadingAddItemToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBuyNow = freezed,
  }) {
    return _then(_$LoadingAddItemToCartImpl(
      isBuyNow: freezed == isBuyNow
          ? _value.isBuyNow
          : isBuyNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadingAddItemToCartImpl implements LoadingAddItemToCart {
  const _$LoadingAddItemToCartImpl({this.isBuyNow});

  @override
  final bool? isBuyNow;

  @override
  String toString() {
    return 'CartState.loadingAddItemToCart(isBuyNow: $isBuyNow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingAddItemToCartImpl &&
            (identical(other.isBuyNow, isBuyNow) ||
                other.isBuyNow == isBuyNow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBuyNow);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingAddItemToCartImplCopyWith<_$LoadingAddItemToCartImpl>
      get copyWith =>
          __$$LoadingAddItemToCartImplCopyWithImpl<_$LoadingAddItemToCartImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return loadingAddItemToCart(isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return loadingAddItemToCart?.call(isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) {
    if (loadingAddItemToCart != null) {
      return loadingAddItemToCart(isBuyNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return loadingAddItemToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return loadingAddItemToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadingAddItemToCart != null) {
      return loadingAddItemToCart(this);
    }
    return orElse();
  }
}

abstract class LoadingAddItemToCart implements CartState {
  const factory LoadingAddItemToCart({final bool? isBuyNow}) =
      _$LoadingAddItemToCartImpl;

  bool? get isBuyNow;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingAddItemToCartImplCopyWith<_$LoadingAddItemToCartImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadActionImplCopyWith<$Res> {
  factory _$$LoadActionImplCopyWith(
          _$LoadActionImpl value, $Res Function(_$LoadActionImpl) then) =
      __$$LoadActionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartModel, List<ItemModel> items});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$LoadActionImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadActionImpl>
    implements _$$LoadActionImplCopyWith<$Res> {
  __$$LoadActionImplCopyWithImpl(
      _$LoadActionImpl _value, $Res Function(_$LoadActionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
    Object? items = null,
  }) {
    return _then(_$LoadActionImpl(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$LoadActionImpl implements LoadAction {
  const _$LoadActionImpl(
      {required this.cartModel, required final List<ItemModel> items})
      : _items = items;

  @override
  final CartModel cartModel;
  final List<ItemModel> _items;
  @override
  List<ItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CartState.loadAction(cartModel: $cartModel, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadActionImpl &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cartModel, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadActionImplCopyWith<_$LoadActionImpl> get copyWith =>
      __$$LoadActionImplCopyWithImpl<_$LoadActionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return loadAction(cartModel, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return loadAction?.call(cartModel, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) {
    if (loadAction != null) {
      return loadAction(cartModel, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return loadAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return loadAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadAction != null) {
      return loadAction(this);
    }
    return orElse();
  }
}

abstract class LoadAction implements CartState {
  const factory LoadAction(
      {required final CartModel cartModel,
      required final List<ItemModel> items}) = _$LoadActionImpl;

  CartModel get cartModel;
  List<ItemModel> get items;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadActionImplCopyWith<_$LoadActionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessEmptyImplCopyWith<$Res> {
  factory _$$SuccessEmptyImplCopyWith(
          _$SuccessEmptyImpl value, $Res Function(_$SuccessEmptyImpl) then) =
      __$$SuccessEmptyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartModel});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$SuccessEmptyImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$SuccessEmptyImpl>
    implements _$$SuccessEmptyImplCopyWith<$Res> {
  __$$SuccessEmptyImplCopyWithImpl(
      _$SuccessEmptyImpl _value, $Res Function(_$SuccessEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
  }) {
    return _then(_$SuccessEmptyImpl(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$SuccessEmptyImpl implements SuccessEmpty {
  const _$SuccessEmptyImpl({required this.cartModel});

  @override
  final CartModel cartModel;

  @override
  String toString() {
    return 'CartState.successEmpty(cartModel: $cartModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessEmptyImpl &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessEmptyImplCopyWith<_$SuccessEmptyImpl> get copyWith =>
      __$$SuccessEmptyImplCopyWithImpl<_$SuccessEmptyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return successEmpty(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return successEmpty?.call(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) {
    if (successEmpty != null) {
      return successEmpty(cartModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return successEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return successEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successEmpty != null) {
      return successEmpty(this);
    }
    return orElse();
  }
}

abstract class SuccessEmpty implements CartState {
  const factory SuccessEmpty({required final CartModel cartModel}) =
      _$SuccessEmptyImpl;

  CartModel get cartModel;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessEmptyImplCopyWith<_$SuccessEmptyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddItemSuccessImplCopyWith<$Res> {
  factory _$$AddItemSuccessImplCopyWith(_$AddItemSuccessImpl value,
          $Res Function(_$AddItemSuccessImpl) then) =
      __$$AddItemSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseCartModel responseCartModel, bool isBuyNow});
}

/// @nodoc
class __$$AddItemSuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$AddItemSuccessImpl>
    implements _$$AddItemSuccessImplCopyWith<$Res> {
  __$$AddItemSuccessImplCopyWithImpl(
      _$AddItemSuccessImpl _value, $Res Function(_$AddItemSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseCartModel = null,
    Object? isBuyNow = null,
  }) {
    return _then(_$AddItemSuccessImpl(
      responseCartModel: null == responseCartModel
          ? _value.responseCartModel
          : responseCartModel // ignore: cast_nullable_to_non_nullable
              as ResponseCartModel,
      isBuyNow: null == isBuyNow
          ? _value.isBuyNow
          : isBuyNow // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddItemSuccessImpl implements AddItemSuccess {
  const _$AddItemSuccessImpl(
      {required this.responseCartModel, required this.isBuyNow});

  @override
  final ResponseCartModel responseCartModel;
  @override
  final bool isBuyNow;

  @override
  String toString() {
    return 'CartState.addItemSuccess(responseCartModel: $responseCartModel, isBuyNow: $isBuyNow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddItemSuccessImpl &&
            (identical(other.responseCartModel, responseCartModel) ||
                other.responseCartModel == responseCartModel) &&
            (identical(other.isBuyNow, isBuyNow) ||
                other.isBuyNow == isBuyNow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseCartModel, isBuyNow);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddItemSuccessImplCopyWith<_$AddItemSuccessImpl> get copyWith =>
      __$$AddItemSuccessImplCopyWithImpl<_$AddItemSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return addItemSuccess(responseCartModel, isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return addItemSuccess?.call(responseCartModel, isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) {
    if (addItemSuccess != null) {
      return addItemSuccess(responseCartModel, isBuyNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return addItemSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return addItemSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (addItemSuccess != null) {
      return addItemSuccess(this);
    }
    return orElse();
  }
}

abstract class AddItemSuccess implements CartState {
  const factory AddItemSuccess(
      {required final ResponseCartModel responseCartModel,
      required final bool isBuyNow}) = _$AddItemSuccessImpl;

  ResponseCartModel get responseCartModel;
  bool get isBuyNow;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddItemSuccessImplCopyWith<_$AddItemSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartModel});

  $CartModelCopyWith<$Res> get cartModel;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartModel = null,
  }) {
    return _then(_$SuccessImpl(
      cartModel: null == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res> get cartModel {
    return $CartModelCopyWith<$Res>(_value.cartModel, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl({required this.cartModel});

  @override
  final CartModel cartModel;

  @override
  String toString() {
    return 'CartState.success(cartModel: $cartModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartModel);

  /// Create a copy of CartState
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
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return success(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return success?.call(cartModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cartModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements CartState {
  const factory Success({required final CartModel cartModel}) = _$SuccessImpl;

  CartModel get cartModel;

  /// Create a copy of CartState
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
  $Res call({ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow});

  $CartModelCopyWith<$Res>? get cartModel;
}

/// @nodoc
class __$$ValidationImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ValidationImpl>
    implements _$$ValidationImplCopyWith<$Res> {
  __$$ValidationImplCopyWithImpl(
      _$ValidationImpl _value, $Res Function(_$ValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validation = null,
    Object? cartModel = freezed,
    Object? isBuyNow = freezed,
  }) {
    return _then(_$ValidationImpl(
      validation: null == validation
          ? _value.validation
          : validation // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      isBuyNow: freezed == isBuyNow
          ? _value.isBuyNow
          : isBuyNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res>? get cartModel {
    if (_value.cartModel == null) {
      return null;
    }

    return $CartModelCopyWith<$Res>(_value.cartModel!, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$ValidationImpl implements Validation {
  const _$ValidationImpl(
      {required this.validation, this.cartModel, this.isBuyNow});

  @override
  final ApiErrorModel validation;
  @override
  final CartModel? cartModel;
  @override
  final bool? isBuyNow;

  @override
  String toString() {
    return 'CartState.validation(validation: $validation, cartModel: $cartModel, isBuyNow: $isBuyNow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationImpl &&
            (identical(other.validation, validation) ||
                other.validation == validation) &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.isBuyNow, isBuyNow) ||
                other.isBuyNow == isBuyNow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, validation, cartModel, isBuyNow);

  /// Create a copy of CartState
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
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return validation(this.validation, cartModel, isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return validation?.call(this.validation, cartModel, isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this.validation, cartModel, isBuyNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class Validation implements CartState {
  const factory Validation(
      {required final ApiErrorModel validation,
      final CartModel? cartModel,
      final bool? isBuyNow}) = _$ValidationImpl;

  ApiErrorModel get validation;
  CartModel? get cartModel;
  bool? get isBuyNow;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationImplCopyWith<_$ValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel error, CartModel? cartModel, bool? isBuyNow});

  $CartModelCopyWith<$Res>? get cartModel;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? cartModel = freezed,
    Object? isBuyNow = freezed,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
      cartModel: freezed == cartModel
          ? _value.cartModel
          : cartModel // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      isBuyNow: freezed == isBuyNow
          ? _value.isBuyNow
          : isBuyNow // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res>? get cartModel {
    if (_value.cartModel == null) {
      return null;
    }

    return $CartModelCopyWith<$Res>(_value.cartModel!, (value) {
      return _then(_value.copyWith(cartModel: value));
    });
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl({required this.error, this.cartModel, this.isBuyNow});

  @override
  final ApiErrorModel error;
  @override
  final CartModel? cartModel;
  @override
  final bool? isBuyNow;

  @override
  String toString() {
    return 'CartState.failure(error: $error, cartModel: $cartModel, isBuyNow: $isBuyNow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.cartModel, cartModel) ||
                other.cartModel == cartModel) &&
            (identical(other.isBuyNow, isBuyNow) ||
                other.isBuyNow == isBuyNow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, cartModel, isBuyNow);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(bool? isBuyNow) loadingAddItemToCart,
    required TResult Function(CartModel cartModel, List<ItemModel> items)
        loadAction,
    required TResult Function(CartModel cartModel) successEmpty,
    required TResult Function(
            ResponseCartModel responseCartModel, bool isBuyNow)
        addItemSuccess,
    required TResult Function(CartModel cartModel) success,
    required TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)
        validation,
    required TResult Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)
        failure,
  }) {
    return failure(error, cartModel, isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult? Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult? Function(CartModel cartModel)? successEmpty,
    TResult? Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult? Function(CartModel cartModel)? success,
    TResult? Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult? Function(
            ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
  }) {
    return failure?.call(error, cartModel, isBuyNow);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(bool? isBuyNow)? loadingAddItemToCart,
    TResult Function(CartModel cartModel, List<ItemModel> items)? loadAction,
    TResult Function(CartModel cartModel)? successEmpty,
    TResult Function(ResponseCartModel responseCartModel, bool isBuyNow)?
        addItemSuccess,
    TResult Function(CartModel cartModel)? success,
    TResult Function(
            ApiErrorModel validation, CartModel? cartModel, bool? isBuyNow)?
        validation,
    TResult Function(ApiErrorModel error, CartModel? cartModel, bool? isBuyNow)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, cartModel, isBuyNow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(LoadingAddItemToCart value) loadingAddItemToCart,
    required TResult Function(LoadAction value) loadAction,
    required TResult Function(SuccessEmpty value) successEmpty,
    required TResult Function(AddItemSuccess value) addItemSuccess,
    required TResult Function(Success value) success,
    required TResult Function(Validation value) validation,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult? Function(LoadAction value)? loadAction,
    TResult? Function(SuccessEmpty value)? successEmpty,
    TResult? Function(AddItemSuccess value)? addItemSuccess,
    TResult? Function(Success value)? success,
    TResult? Function(Validation value)? validation,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(LoadingAddItemToCart value)? loadingAddItemToCart,
    TResult Function(LoadAction value)? loadAction,
    TResult Function(SuccessEmpty value)? successEmpty,
    TResult Function(AddItemSuccess value)? addItemSuccess,
    TResult Function(Success value)? success,
    TResult Function(Validation value)? validation,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements CartState {
  const factory Failure(
      {required final ApiErrorModel error,
      final CartModel? cartModel,
      final bool? isBuyNow}) = _$FailureImpl;

  ApiErrorModel get error;
  CartModel? get cartModel;
  bool? get isBuyNow;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
