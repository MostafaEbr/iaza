import 'package:equatable/equatable.dart';
import '../../../../core/network/models/api_result.dart';
import '../../data/models/product_model.dart';
import '../repo/product_repo.dart';


class UpdateProductDetailsUseCase extends Equatable {
  final ProductRepo productRepo;
  const UpdateProductDetailsUseCase({required this.productRepo});

  Future<ApiResult<ProductModel>> call(ProductModel productModel) async {
    return await productRepo.updateProductDetails(productModel);
  }

  @override
  List<Object?> get props => [productRepo];
}
