
import 'package:bloc/bloc.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../domain/use_cases/get_categories_use_case.dart';
import 'states.dart';

class CategoriesCubit extends Cubit<CategoriesState>{
  CategoriesCubit() : super(const CategoriesState.initial());


  Future<void> getCategories()async{
    emit(const CategoriesState.loading());
      var data = await getIt<GetCategoriesUseCase>().call();
      data.when(
        success: (data) async {
          emit(CategoriesState.success(categoriesModel: data));
        },
        failure: (apiErrorModel) {
          emit(CategoriesState.failure(error: apiErrorModel));
        },
        validation: (apiErrorModel) =>
            emit(CategoriesState.validation(validation: apiErrorModel)),
      );
  }


}