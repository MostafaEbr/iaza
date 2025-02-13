import '../../../../core/network/models/api_result.dart';
import '../../data/models/product_model.dart';

abstract class ProductRepo{

  /// for details product
  Future<ApiResult<ProductModel>> fetchProductDetails(int id);
  /// for update details product
  Future<ApiResult<ProductModel>> updateProductDetails(ProductModel productModel);
}