import 'package:equatable/equatable.dart';
import '../../../../core/network/models/api_result.dart';
import '../../data/models/category_model/category_model.dart';
import '../repository/categories_repo.dart';


class GetCategoriesUseCase extends Equatable {
  final CategoriesRepo categoriesRepo;
  const GetCategoriesUseCase({required this.categoriesRepo});

  Future<ApiResult<List<CategoryModel>>> call() async {
    return await categoriesRepo.getCategories();
  }

  @override
  List<Object?> get props => [categoriesRepo];
}
