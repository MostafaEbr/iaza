import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../item/item_model.dart';


part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class MetaModel extends Equatable with _$MetaModel {
  const MetaModel._();

  const factory MetaModel({
    num? subtotal,
    num? tax,
    num? tax_amount,
    num? delivery_cost,
    dynamic coupon,
    dynamic coupon_value,
    num? total
  }) = _MetaModel;


  factory MetaModel.fromJson(Map<String, dynamic> json) => _$MetaModelFromJson(json);

  factory MetaModel.calculate(List<ItemModel> cartItems, {
    num taxRate = 0.0,
    num deliveryCost = 10.0,
    num? couponValue,
  }) {
    num subtotal = cartItems.fold(0, (sum, item) {
      return sum + (item.product?.price as num) * (item.quantity as num);
    });

    num taxAmount = subtotal * taxRate;
    num total = subtotal + taxAmount + deliveryCost;

    if (couponValue != null) {
      total -= couponValue;
      if (total < 0) total = 0; // Ensure total isn't negative
    }

    return MetaModel(
      subtotal: subtotal,
      tax: taxRate,
      tax_amount: taxAmount,
      delivery_cost: deliveryCost,
      coupon:  null,
      coupon_value: couponValue,
      total: total,
    );
  }

  @override
  Map<String, dynamic> toJson() => toJson();

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    subtotal,
    delivery_cost,
     tax,
     tax_amount,
     coupon,
     coupon_value,
     total
  ];
}