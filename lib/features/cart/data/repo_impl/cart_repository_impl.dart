import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:investment/features/cart/domain/entities/meta/meta_model.dart';
import '../../../../core/local_storage/cache_helper.dart';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/models/api_error_model.dart';
import '../../../../core/network/models/api_result.dart';
import '../../domain/entities/cart_model.dart';
import '../../domain/entities/item/item_model.dart';
import '../../domain/entities/requests/request_entities.dart';
import '../../domain/repository/web_service.dart';

class CartRepositoryImpl implements CartRepository{
  late final cartApiService ;

  CartRepositoryImpl();


  @override
  Future<ApiResult<CartModel>> fetchCart() async{
    String? rawData = CacheHelper.getCartContent();
    List<ItemModel> items = [];
    if (rawData != null && rawData.isNotEmpty) {
      List<dynamic> data = jsonDecode(rawData);
      items = data.map((item) => ItemModel.fromJson(item)).toList();
    }
      return ApiResult.success(CartModel(items: items,meta: MetaModel.calculate(items)));
  }

  @override
  Future<ApiResult<CartModel>> updateItemFromCart(RequestEntities requestEntities)async {
    String? rawData = CacheHelper.getCartContent();
    List<ItemModel> items = [];
    if (rawData != null && rawData.isNotEmpty) {
      List<dynamic> data = jsonDecode(rawData);
      items = data.map((item) => ItemModel.fromJson(item)).toList();
    }
    items = items.map((item) {
      if (item.product?.id == requestEntities.productModel?.id) {
        return item.copyWith(
          product: requestEntities.productModel,
          quantity:requestEntities.quantity,
        );
      }
      return item;
    }).toList();
    CacheHelper.setCartContent(jsonEncode(items.map((e) => e.toJson()).toList()));
    return ApiResult.success(CartModel(items: items,meta:MetaModel.calculate(items)));
  }

  @override
  Future<ApiResult<CartModel>> deleteItemFromCart(RequestEntities requestEntities) async{
    String? rawData = CacheHelper.getCartContent();
    List<ItemModel> items = [];
    if (rawData != null && rawData.isNotEmpty) {
      List<dynamic> data = jsonDecode(rawData);
      items = data.map((item) => ItemModel.fromJson(item)).toList();
    }
    items.removeWhere((item)=>item.product?.id==requestEntities.productModel?.id);
    CacheHelper.setCartContent(jsonEncode(items.map((e) => e.toJson()).toList()));

    return ApiResult.success(CartModel(items: items,meta:MetaModel.calculate(items)));
  }

  @override
  Future<ApiResult<CartModel>> checkout() async{
    try {
      var data = await cartApiService.checkout();
      return ApiResult.success(data.data!);
    } on DioException catch (error) {
      // Handle the error using a custom error handler
      ErrorHandler errorHandler = ErrorHandler.handle(error);
      ApiErrorModel apiErrorModel = errorHandler.apiErrorModel;

      // Check if the status is 422 (Unprocessable Entity)
      if (error.response?.statusCode == HttpStatus.unprocessableEntity) {
        // If 422, return validation error result
        return ApiResult.validation(apiErrorModel);
      }

      // For any other status code, return failure
      return ApiResult.failure(apiErrorModel);
    } catch (error) {
      // Handle the error using a custom error handler
      ErrorHandler errorHandler = ErrorHandler.handle(error);
      ApiErrorModel apiErrorModel = errorHandler.apiErrorModel;

      // Generic catch for any other non-Dio-related exceptions
      return ApiResult.failure(apiErrorModel);
    }
  }


}