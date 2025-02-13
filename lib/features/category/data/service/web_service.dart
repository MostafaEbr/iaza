import 'package:dio/dio.dart';
import '../../../../core/network/api.dart';
import 'package:retrofit/retrofit.dart';

import '../models/categories_model.dart';
import '../models/category_model/category_model.dart';
part 'web_service.g.dart';

@RestApi(baseUrl: API.baseUrl)
abstract class CategoriesApiService {
  factory CategoriesApiService(Dio dio, {String baseUrl}) = _CategoriesApiService;

  @GET(API.categories)
  Future<List<CategoryModel>> getCategories();
}
