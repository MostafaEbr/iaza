// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaModelImpl _$$MetaModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaModelImpl(
      subtotal: json['subtotal'] as num?,
      tax: json['tax'] as num?,
      tax_amount: json['tax_amount'] as num?,
      delivery_cost: json['delivery_cost'] as num?,
      coupon: json['coupon'],
      coupon_value: json['coupon_value'],
      total: json['total'] as num?,
    );

Map<String, dynamic> _$$MetaModelImplToJson(_$MetaModelImpl instance) =>
    <String, dynamic>{
      'subtotal': instance.subtotal,
      'tax': instance.tax,
      'tax_amount': instance.tax_amount,
      'delivery_cost': instance.delivery_cost,
      'coupon': instance.coupon,
      'coupon_value': instance.coupon_value,
      'total': instance.total,
    };
