import 'package:dio/dio.dart';
import '../../../../core/network/api.dart';
import 'package:retrofit/retrofit.dart';

import '../models/product_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: API.baseUrl)
abstract class ProductApiService {
  factory ProductApiService(Dio dio, {String baseUrl}) = _ProductApiService;

  @GET("${API.products}/{id}")
  Future<ProductModel> getProductDetails(
      @Path('id') int id
      );
  @PUT("${API.products}/{id}")
  Future<ProductModel> updateProductDetails(
      @Path('id') int id,
      @Body() Map<String, dynamic> data,
      );
}
