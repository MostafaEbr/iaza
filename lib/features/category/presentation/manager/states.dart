import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:investment/features/category/data/models/category_model/category_model.dart';

import '../../../../core/network/models/api_error_model.dart';
import '../../data/models/categories_model.dart';

part 'states.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState
{
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.loading() = Loading;
  const factory CategoriesState.success({required List<CategoryModel> categoriesModel}) = Success;
  const factory CategoriesState.validation({required ApiErrorModel validation}) = Validation;
  const factory CategoriesState.failure({required ApiErrorModel error}) = Faliure;
}
