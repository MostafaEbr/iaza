import 'package:dio/dio.dart';
import '../../../../core/network/api.dart';
import 'package:retrofit/retrofit.dart';

import '../../../product/data/models/product_model.dart';
import '../../domain/entities/request_product.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: API.baseUrl)
abstract class ProductsApiService {
  factory ProductsApiService(Dio dio, {String baseUrl}) = _ProductsApiService;

  @GET(API.products)
  Future<List<ProductModel>> getProducts(
      @Queries() Map<String, dynamic>? requestProducts,
      );
}
