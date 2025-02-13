import 'package:equatable/equatable.dart';
import '../../../../core/network/models/api_result.dart';
import '../../data/models/product_model.dart';
import '../repo/product_repo.dart';


class GetProductDetailsUseCase extends Equatable {
  final ProductRepo productRepo;
  const GetProductDetailsUseCase({required this.productRepo});

  Future<ApiResult<ProductModel>> call(int id ) async {
    return await productRepo.fetchProductDetails(id);
  }

  @override
  List<Object?> get props => [productRepo];
}
