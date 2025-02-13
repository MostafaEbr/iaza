import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:investment/config/router/routes_name.dart';
import 'package:investment/features/cart/presentations/manager/cubit.dart';
import 'package:investment/features/cart/presentations/screens/cart.dart';
import 'package:investment/features/category/presentation/manager/cubit.dart';
import 'package:investment/features/checkout/presentation/screens/order_confirmed_screen.dart';
import 'package:investment/features/product/data/models/product_model.dart';
import 'package:investment/features/product/presentation/screens/product_screen.dart';
import 'package:investment/features/products/presentation/manager/cubit.dart';
import 'package:investment/features/products/presentation/screens/products_screen.dart';
import '../../core/di/dependency_injection.dart';
import '../../core/extension/utils.dart';
import '../../features/product/presentation/manager/cubit.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import 'route_observer.dart';

class AppRouter {
  factory AppRouter() => _shared;

  AppRouter._();

  static final _shared = AppRouter._();
  static final RouteObservers routeObserver = RouteObservers();

  static final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey(
    debugLabel: 'root',
  );

  final router = GoRouter(
    debugLogDiagnostics: false,
    navigatorKey: rootNavigatorKey,
    observers: [routeObserver],
    initialLocation: RoutesName.splash,
    routes: [
      GoRoute(
        path: RoutesName.splash,
        name: RoutesName.splash,
        pageBuilder: (context, state) => Utils.buildPageWithDefaultTransition(
          context: context,
          state: state,
          name: RoutesName.splash,
          child: const SplashPage(),
        ),
      ),
      GoRoute(
        path: RoutesName.products,
        name: RoutesName.products,
        pageBuilder: (context, state) => Utils.buildPageWithDefaultTransition(
          context: context,
          state: state,
          name: RoutesName.products,
          child: MultiBlocProvider(
            providers: [
              BlocProvider<ProductsCubit>(
                create:(context)=> getIt<ProductsCubit>(),),
              BlocProvider<CategoriesCubit>(create:(context)=>CategoriesCubit(),),
            ],
              child: const ProductsScreen()),
        ),
      ),
      GoRoute(
        path: RoutesName.productDetails,
        name: RoutesName.productDetails,
        pageBuilder: (context, state) => Utils.buildPageWithDefaultTransition(
          context: context,
          state: state,
          name: RoutesName.productDetails,
          child: BlocProvider<ProductCubit>(
              create:(context)=>ProductCubit(),
              child:  ProductDetailsScreen(productModel: state.extra as ProductModel )),
        ),
      ),
      GoRoute(
        path: RoutesName.cart,
        name: RoutesName.cart,
        pageBuilder: (context, state) => Utils.buildPageWithDefaultTransition(
          context: context,
          state: state,
          name: RoutesName.cart,
          child: BlocProvider<CartCubit>(
              create:(context)=>CartCubit(),
              child:  CartScreen()),
        ),
      ),
      GoRoute(
        path: RoutesName.orderConfirmed,
        name: RoutesName.orderConfirmed,
        pageBuilder: (context, state) => Utils.buildPageWithDefaultTransition(
          context: context,
          state: state,
          name: RoutesName.orderConfirmed,
          child: OrderConfirmedScreen(),
        ),
      ),
    ],
  );
}
