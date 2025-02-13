import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:investment/features/product/data/models/product_model.dart';


part 'item_model.freezed.dart';
part 'item_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ItemModel extends Equatable with _$ItemModel {
  const ItemModel._();

  const factory ItemModel({
    ProductModel? product,
    int? quantity
  }) = _ItemModel;


  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    product,
    quantity
  ];
}