// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaModel _$MetaModelFromJson(Map<String, dynamic> json) {
  return _MetaModel.fromJson(json);
}

/// @nodoc
mixin _$MetaModel {
  num? get subtotal => throw _privateConstructorUsedError;
  num? get tax => throw _privateConstructorUsedError;
  num? get tax_amount => throw _privateConstructorUsedError;
  num? get delivery_cost => throw _privateConstructorUsedError;
  dynamic get coupon => throw _privateConstructorUsedError;
  dynamic get coupon_value => throw _privateConstructorUsedError;
  num? get total => throw _privateConstructorUsedError;

  /// Serializes this MetaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaModelCopyWith<MetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) then) =
      _$MetaModelCopyWithImpl<$Res, MetaModel>;
  @useResult
  $Res call(
      {num? subtotal,
      num? tax,
      num? tax_amount,
      num? delivery_cost,
      dynamic coupon,
      dynamic coupon_value,
      num? total});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res, $Val extends MetaModel>
    implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = freezed,
    Object? tax = freezed,
    Object? tax_amount = freezed,
    Object? delivery_cost = freezed,
    Object? coupon = freezed,
    Object? coupon_value = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as num?,
      tax_amount: freezed == tax_amount
          ? _value.tax_amount
          : tax_amount // ignore: cast_nullable_to_non_nullable
              as num?,
      delivery_cost: freezed == delivery_cost
          ? _value.delivery_cost
          : delivery_cost // ignore: cast_nullable_to_non_nullable
              as num?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as dynamic,
      coupon_value: freezed == coupon_value
          ? _value.coupon_value
          : coupon_value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaModelImplCopyWith<$Res>
    implements $MetaModelCopyWith<$Res> {
  factory _$$MetaModelImplCopyWith(
          _$MetaModelImpl value, $Res Function(_$MetaModelImpl) then) =
      __$$MetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num? subtotal,
      num? tax,
      num? tax_amount,
      num? delivery_cost,
      dynamic coupon,
      dynamic coupon_value,
      num? total});
}

/// @nodoc
class __$$MetaModelImplCopyWithImpl<$Res>
    extends _$MetaModelCopyWithImpl<$Res, _$MetaModelImpl>
    implements _$$MetaModelImplCopyWith<$Res> {
  __$$MetaModelImplCopyWithImpl(
      _$MetaModelImpl _value, $Res Function(_$MetaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtotal = freezed,
    Object? tax = freezed,
    Object? tax_amount = freezed,
    Object? delivery_cost = freezed,
    Object? coupon = freezed,
    Object? coupon_value = freezed,
    Object? total = freezed,
  }) {
    return _then(_$MetaModelImpl(
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as num?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as num?,
      tax_amount: freezed == tax_amount
          ? _value.tax_amount
          : tax_amount // ignore: cast_nullable_to_non_nullable
              as num?,
      delivery_cost: freezed == delivery_cost
          ? _value.delivery_cost
          : delivery_cost // ignore: cast_nullable_to_non_nullable
              as num?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as dynamic,
      coupon_value: freezed == coupon_value
          ? _value.coupon_value
          : coupon_value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaModelImpl extends _MetaModel {
  const _$MetaModelImpl(
      {this.subtotal,
      this.tax,
      this.tax_amount,
      this.delivery_cost,
      this.coupon,
      this.coupon_value,
      this.total})
      : super._();

  factory _$MetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaModelImplFromJson(json);

  @override
  final num? subtotal;
  @override
  final num? tax;
  @override
  final num? tax_amount;
  @override
  final num? delivery_cost;
  @override
  final dynamic coupon;
  @override
  final dynamic coupon_value;
  @override
  final num? total;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      __$$MetaModelImplCopyWithImpl<_$MetaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaModelImplToJson(
      this,
    );
  }
}

abstract class _MetaModel extends MetaModel {
  const factory _MetaModel(
      {final num? subtotal,
      final num? tax,
      final num? tax_amount,
      final num? delivery_cost,
      final dynamic coupon,
      final dynamic coupon_value,
      final num? total}) = _$MetaModelImpl;
  const _MetaModel._() : super._();

  factory _MetaModel.fromJson(Map<String, dynamic> json) =
      _$MetaModelImpl.fromJson;

  @override
  num? get subtotal;
  @override
  num? get tax;
  @override
  num? get tax_amount;
  @override
  num? get delivery_cost;
  @override
  dynamic get coupon;
  @override
  dynamic get coupon_value;
  @override
  num? get total;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaModelImplCopyWith<_$MetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
