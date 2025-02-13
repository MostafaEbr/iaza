import 'package:bloc/bloc.dart';
import 'package:investment/features/product/data/models/product_model.dart';
import 'package:investment/features/products/presentation/manager/states.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../domain/entities/request_product.dart';
import '../../domain/use_cases/get_products_use_case.dart';

class ProductsCubit extends Cubit<ProductsState>{
  ProductsCubit() : super(const ProductsState.initial());


  ///Fetch products
  void fetchProducts({RequestProducts? requestProducts})async{

  emit(const ProductsState.loading());
  var data = await getIt<GetProductsUseCase>().call(requestProducts);
  data.when(
    success: (data) async {
      emit(ProductsState.success(productList: data));
    },
    failure: (apiErrorModel) {
      emit(ProductsState.failure(error: apiErrorModel));
    },
    validation: (apiErrorModel) =>
        emit(ProductsState.validation(validation: apiErrorModel)),
  );

}

  updateProducts(ProductModel productModel) {
    if(state is Success){
      List<ProductModel> list=(state as  Success).productList;
      list = list.map((item) {
        if (item.id == productModel.id) {
          return productModel;
        }
        return item;
      }).toList();
      emit(ProductsState.success(productList: list));
    }
  }

}