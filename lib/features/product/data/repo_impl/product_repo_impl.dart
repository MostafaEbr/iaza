import 'dart:io';

import 'package:dio/dio.dart';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/models/api_error_model.dart';
import '../../../../core/network/models/api_result.dart';
import '../../domain/repo/product_repo.dart';
import '../models/product_model.dart';
import '../services/api_service.dart';

class ProductRepoImpl extends ProductRepo{
  ProductApiService productApiService;
  ProductRepoImpl({required this.productApiService});
  @override
  Future<ApiResult<ProductModel>> fetchProductDetails(int id)async {
    try {
      var data = await productApiService.getProductDetails(id);
      return ApiResult.success(data);
    } on DioException catch (error) {
      // Handle the error using a custom error handler
      ErrorHandler errorHandler = ErrorHandler.handle(error);
      ApiErrorModel apiErrorModel = errorHandler.apiErrorModel;

      // Check if the status is 422 (Unprocessable Entity)
      if (error.response?.statusCode == HttpStatus.unprocessableEntity) {
        // If 422, return validation error result
        print(errorHandler);
        print(apiErrorModel.toJson());
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

  @override
  Future<ApiResult<ProductModel>> updateProductDetails(ProductModel productModel) async{
    try {
      var data = await productApiService.updateProductDetails(productModel.id,productModel.toJsonData());
      return ApiResult.success(data);
    } on DioException catch (error) {
      ErrorHandler errorHandler = ErrorHandler.handle(error);
      ApiErrorModel apiErrorModel = errorHandler.apiErrorModel;
      if (error.response?.statusCode == HttpStatus.unprocessableEntity) {
        return ApiResult.validation(apiErrorModel);
      }

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