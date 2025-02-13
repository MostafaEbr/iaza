
import '../../../../core/network/models/api_result.dart';
import '../../data/models/category_model/category_model.dart';

abstract class CategoriesRepo {

 Future<ApiResult<List<CategoryModel>>> getCategories();
}