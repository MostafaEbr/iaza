import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'item/item_model.dart';
import 'meta/meta_model.dart';


part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CartModel extends Equatable with _$CartModel {
  const CartModel._();

  const factory CartModel({
    List<ItemModel>? items,
    MetaModel? meta,
  }) = _CartModel;


  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

  Map<String, dynamic> toJson() => toJson();

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    items,
    meta,
  ];
}