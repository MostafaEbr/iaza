import '../../../../core/network/models/api_result.dart';
import '../../../product/data/models/product_model.dart';
import '../entities/request_product.dart';

abstract class ProductsRepo{

  Future<ApiResult<List<ProductModel>>> fetchProducts(RequestProducts? requestProducts);
}