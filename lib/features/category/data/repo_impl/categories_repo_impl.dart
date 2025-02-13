
import 'dart:io';
import '../../../../core/network/api_error_handler.dart';
import '../../../../core/network/models/api_error_model.dart';
import '../../../../core/network/models/api_result.dart';
import '../../domain/repository/categories_repo.dart';
import '../models/categories_model.dart';
import '../models/category_model/category_model.dart';
import '../service/web_service.dart';

class CategoriesRepoImpl extends CategoriesRepo {
  CategoriesApiService categoriesWebService;
  CategoriesRepoImpl({required this.categoriesWebService});

  @override
  Future<ApiResult<List<CategoryModel>>> getCategories()async {
    try {
      var data = await categoriesWebService.getCategories();
      return ApiResult.success(data);
    } catch (error) {
      ErrorHandler errorHandler= ErrorHandler.handle(error);
      ApiErrorModel apiErrorModel =errorHandler.apiErrorModel;
      if (apiErrorModel.status == HttpStatus.unprocessableEntity) {
        return ApiResult.validation(apiErrorModel);
      }
      return ApiResult.failure(apiErrorModel);
    }
  }

}