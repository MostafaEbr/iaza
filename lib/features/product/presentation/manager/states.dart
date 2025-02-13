import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network/models/api_error_model.dart';
import '../../../product/data/models/product_model.dart';


part 'states.freezed.dart';

@freezed
class ProductState with _$ProductState
{
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = Loading;
  const factory ProductState.loadingChangeSku({required ProductModel productModel}) = LoadingChangeSku;
  const factory ProductState.loadingChangeQuantity({required ProductModel productModel}) = LoadingChangeQuantity;
  const factory ProductState.successQuantitySelected({required ProductModel productModel}) = SuccessQuantitySelected;
  const factory ProductState.successChangeSkuSelected({required ProductModel productModel}) = SuccessChangeSkuSelected;
  const factory ProductState.success({required ProductModel productModel}) = Success;
  const factory ProductState.validation({required ApiErrorModel validation}) = Validation;
  const factory ProductState.failure({required ApiErrorModel error}) = Faliure;
}
