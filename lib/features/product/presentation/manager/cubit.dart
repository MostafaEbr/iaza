import 'package:bloc/bloc.dart';
import 'package:investment/features/product/domain/use_cases/update_product.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../data/models/product_model.dart';
import '../../domain/use_cases/get_product_use_case.dart';
import 'states.dart';

class ProductCubit extends Cubit<ProductState>{
  ProductCubit() : super(const ProductState.initial());

  int selectedQty = 1;

  ///Fetch products
void fetchProductDetails(int idProduct)async{

  emit(const ProductState.loading());
  var data = await getIt<GetProductDetailsUseCase>().call(idProduct);
  data.when(
    success: (data) async {
      emit(ProductState.success(productModel: data));
    },
    failure: (apiErrorModel) {
      emit(ProductState.failure(error: apiErrorModel));
    },
    validation: (apiErrorModel) =>
        emit(ProductState.validation(validation: apiErrorModel)),
  );

}
  void updateProduct(ProductModel productModel)async{
    emit(const ProductState.loading());
    var data = await getIt<UpdateProductDetailsUseCase>().call(productModel);
    data.when(
      success: (data) async {
        emit(ProductState.success(productModel: data));
      },
      failure: (apiErrorModel) {
        emit(ProductState.failure(error: apiErrorModel));
      },
      validation: (apiErrorModel) =>
          emit(ProductState.validation(validation: apiErrorModel)),
    );

  }

  void changeSelectedQuantity(ProductModel productModel,int newQuantity) {
    emit(ProductState.loadingChangeQuantity(productModel: productModel));
    selectedQty = newQuantity;
    emit(ProductState.successQuantitySelected(productModel: productModel));
  }

}