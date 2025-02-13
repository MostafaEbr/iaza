import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/network/models/api_error_model.dart';
import '../../../product/data/models/product_model.dart';
import '../../data/models/response_cart_model.dart';
import '../../domain/entities/cart_model.dart';
import '../../domain/entities/item/item_model.dart';

part 'states.freezed.dart';

@freezed
class CartState with _$CartState
{
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = Loading;
  const factory CartState.loadingAddItemToCart({bool? isBuyNow}) = LoadingAddItemToCart;
  const factory CartState.loadAction({required CartModel cartModel,required List<ItemModel> items}) = LoadAction;
  const factory CartState.successEmpty({required CartModel cartModel}) = SuccessEmpty;
  const factory CartState.addItemSuccess({required ResponseCartModel responseCartModel,required bool isBuyNow}) = AddItemSuccess;
  const factory CartState.success({required CartModel cartModel}) = Success;
  const factory CartState.validation({required ApiErrorModel validation,CartModel? cartModel, bool? isBuyNow}) = Validation;
  const factory CartState.failure({required ApiErrorModel error,CartModel? cartModel, bool? isBuyNow}) = Failure;
}
