import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CategoryModel extends Equatable with _$CategoryModel {
  const CategoryModel._();

  const factory CategoryModel({
   required int? id,
   required String? name,
   required String? image,

  }) = _CategoryModel;


  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => toJson();

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    id,
    name,
    image,
   ];
}
