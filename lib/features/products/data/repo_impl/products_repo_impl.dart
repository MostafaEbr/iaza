import '../../../../core/network/models/api_result.dart';
import '../../../product/data/models/product_model.dart';
import '../../domain/entities/request_product.dart';
import '../../domain/repo/products_repo.dart';
import '../services/api_service.dart';

class ProductsRepoImpl extends ProductsRepo{
  ProductsApiService productsApiService;
  ProductsRepoImpl({required this.productsApiService});
  @override
  Future<ApiResult<List<ProductModel>>> fetchProducts(RequestProducts? requestProducts)async {
    // try {
      var data = await productsApiService.getProducts(requestProducts?.toJson());
      return ApiResult.success(data);
    // } on DioException catch (error) {
    //   // Handle the error using a custom error handler
    //   ErrorHandler errorHandler = ErrorHandler.handle(error);
    //   ApiErrorModel apiErrorModel = errorHandler.apiErrorModel;
    //
    //   // Check if the status is 422 (Unprocessable Entity)
    //   if (error.response?.statusCode == HttpStatus.unprocessableEntity) {
    //     // If 422, return validation error result
    //     print(errorHandler);
    //     print(apiErrorModel.toJson());
    //     return ApiResult.validation(apiErrorModel);
    //   }
    //
    //   // For any other status code, return failure
    //   return ApiResult.failure(apiErrorModel);
    // } catch (error) {
    //   // Handle the error using a custom error handler
    //   ErrorHandler errorHandler = ErrorHandler.handle(error);
    //   ApiErrorModel apiErrorModel = errorHandler.apiErrorModel;
    //
    //   // Generic catch for any other non-Dio-related exceptions
    //   return ApiResult.failure(apiErrorModel);
    // }
  }



}