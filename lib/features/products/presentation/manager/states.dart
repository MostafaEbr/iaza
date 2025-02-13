import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/network/models/api_error_model.dart';
import '../../../product/data/models/product_model.dart';


part 'states.freezed.dart';

@freezed
class ProductsState with _$ProductsState
{
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = Loading;
  const factory ProductsState.loadingPagination() = LoadingPagination;
  const factory ProductsState.success({required List<ProductModel> productList}) = Success;
  const factory ProductsState.validation({required ApiErrorModel validation}) = Validation;
  const factory ProductsState.failure({required ApiErrorModel error}) = Faliure;
}
