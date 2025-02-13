
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:investment/features/category/data/models/category_model/category_model.dart';

import '../../../../core/utils/constant/constant.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ProductModel extends Equatable with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    required int id,
     String? title,
     double? price,
     String? description,
     List<String>? images,
     CategoryModel? category,
    required DateTime creationAt,
    required DateTime updatedAt,
  }) = _ProductModel;


  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => toJson();
  Map<String, dynamic> toJsonData() {
    return {
      "title": title,
      "price": price,
    };
  }
  String displayPrice()=>"$currency$price";

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
     id ,
     title ,
     description ,
     price,
     images,
  ];
}