import '../../../../core/network/models/api_result.dart';
import '../entities/cart_model.dart';
import '../entities/requests/request_entities.dart';

abstract class CartRepository {
  Future<ApiResult<CartModel>> fetchCart();
  Future<ApiResult<CartModel>> updateItemFromCart(RequestEntities requestEntities);
  Future<ApiResult<CartModel>> deleteItemFromCart(RequestEntities requestEntities);
  Future<ApiResult<CartModel>> checkout();
}