import 'package:equatable/equatable.dart';
import '../../../../core/network/models/api_result.dart';
import '../../../product/data/models/product_model.dart';
import '../entities/request_product.dart';
import '../repo/products_repo.dart';


class GetProductsUseCase extends Equatable {
  final ProductsRepo productsRepo;
  const GetProductsUseCase({required this.productsRepo});

  Future<ApiResult<List<ProductModel>>> call(RequestProducts? requestProducts) async {
    return await productsRepo.fetchProducts(requestProducts);
  }

  @override
  List<Object?> get props => [productsRepo];
}
