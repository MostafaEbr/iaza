
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_model/category_model.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CategoriesModel extends Equatable with _$CategoriesModel {
  const CategoriesModel._();

  const factory CategoriesModel({
    required List<CategoryModel> data,
    required String? message,
  }) = _CategoriesModel;


  factory CategoriesModel.fromJson(Map<String, dynamic> json) => _$CategoriesModelFromJson(json);

  Map<String, dynamic> toJson() => toJson();

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data, message];
}