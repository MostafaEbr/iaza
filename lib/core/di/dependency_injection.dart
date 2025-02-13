import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:investment/core/network/setup/dio_setup.dart';
import 'package:investment/features/cart/domain/use_cases/fetch_cart.dart';
import 'package:investment/features/category/data/repo_impl/categories_repo_impl.dart';
import 'package:investment/features/category/data/service/web_service.dart';
import 'package:investment/features/category/domain/repository/categories_repo.dart';
import 'package:investment/features/product/data/repo_impl/product_repo_impl.dart';
import 'package:investment/features/product/domain/repo/product_repo.dart';
import 'package:investment/features/products/presentation/manager/cubit.dart';
import '../../features/cart/data/repo_impl/cart_repository_impl.dart';
import '../../features/cart/domain/repository/web_service.dart';
import '../../features/cart/domain/use_cases/delete_item_from_cart.dart';
import '../../features/cart/domain/use_cases/update_item_cart.dart';
import '../../features/category/domain/use_cases/get_categories_use_case.dart';
import '../../features/product/data/services/api_service.dart';
import '../../features/product/domain/use_cases/get_product_use_case.dart';
import '../../features/product/domain/use_cases/update_product.dart';
import '../../features/products/data/repo_impl/products_repo_impl.dart';
import '../../features/products/data/services/api_service.dart';
import '../../features/products/domain/repo/products_repo.dart';
import '../../features/products/domain/use_cases/get_products_use_case.dart';
import '../local_storage/hive.dart';


final GetIt getIt=GetIt.instance..allowReassignment=true;
Future<void> initGetIt()async{

  final dio = Dio()..initialize();
  // Registering the Dio instance
  getIt.registerSingleton<Dio>(dio);

  getIt.registerSingleton<HiveHelper>(await HiveHelper.initialHive());

  getIt.registerSingleton<ProductsApiService>(ProductsApiService(getIt()));
  getIt.registerSingleton<ProductApiService>(ProductApiService(getIt()));
  getIt.registerSingleton<CategoriesApiService>(CategoriesApiService(getIt()));

  getIt.registerSingleton<ProductsRepo>(ProductsRepoImpl(productsApiService: getIt()));
  getIt.registerSingleton<ProductRepo>(ProductRepoImpl(productApiService: getIt()));
  getIt.registerSingleton<CartRepository>(CartRepositoryImpl());
  getIt.registerSingleton<CategoriesRepo>(CategoriesRepoImpl(categoriesWebService: getIt()));

  getIt.registerSingleton<GetProductsUseCase>(GetProductsUseCase(productsRepo: getIt()));
  getIt.registerSingleton<GetProductDetailsUseCase>(GetProductDetailsUseCase(productRepo: getIt()));
  getIt.registerSingleton<FetchCartUseCase>(FetchCartUseCase(cartRepository: getIt()));
  getIt.registerSingleton<DeleteItemFromCartUseCase>(DeleteItemFromCartUseCase(cartRepository: getIt()));
  getIt.registerSingleton<UpdateItemFromCartUseCase>(UpdateItemFromCartUseCase(cartRepository: getIt()));
  getIt.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase(categoriesRepo: getIt()));
  getIt.registerSingleton<UpdateProductDetailsUseCase>(UpdateProductDetailsUseCase(productRepo: getIt()));
  getIt.registerSingleton<ProductsCubit>(ProductsCubit());

}