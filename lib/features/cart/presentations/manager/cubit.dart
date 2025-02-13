import 'package:bloc/bloc.dart';
import 'package:investment/features/cart/domain/entities/item/item_model.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../domain/entities/cart_model.dart';
import '../../domain/entities/requests/request_entities.dart';
import '../../domain/use_cases/delete_item_from_cart.dart';
import '../../domain/use_cases/fetch_cart.dart';
import '../../domain/use_cases/update_item_cart.dart';
import 'states.dart';

class CartCubit extends Cubit<CartState>{
  CartCubit() : super(const CartState.initial());

  /// This function for fetch(get all data) items from cart
  Future<void> fetchCart()async{
    emit(const CartState.loading());
    var data = await getIt<FetchCartUseCase>().call();
    data.when(
      success: (data) async {
        data.items==null||data.items!.isEmpty?emit(CartState.successEmpty(cartModel: data)): emit(CartState.success(cartModel: data));
      },
      failure: (apiErrorModel) {
        emit(CartState.failure(error: apiErrorModel));
      },
      validation: (apiErrorModel) =>
          emit(CartState.validation(validation: apiErrorModel)),
    );
  }
  /// This function for update item from cart
  Future<void> updateItemFromCart(RequestEntities requestEntities,CartModel cartModel,ItemModel item)async{
    List<ItemModel> itemList = [];
    itemList.add(item);
    emit( CartState.loadAction(cartModel: cartModel, items: itemList));
    var data = await getIt<UpdateItemFromCartUseCase>().call(requestEntities);
    data.when(
      success: (data) async {
        data.items==null||data.items!.isEmpty?emit(CartState.successEmpty(cartModel: data)): emit(CartState.success(cartModel: data));
      },
      failure: (apiErrorModel) {
        emit(CartState.failure(error: apiErrorModel,cartModel: cartModel));
      },
      validation: (apiErrorModel) =>
          emit(CartState.validation(validation: apiErrorModel,cartModel:cartModel)),
    );
  }
  /// This function for delete item from cart
  Future<void> deleteItemFromCart(RequestEntities requestEntities,CartModel cartModel,ItemModel item)async{
    List<ItemModel> itemList = [];
    itemList.add(item);
    emit(CartState.loadAction(cartModel: cartModel, items: itemList));
    var data = await getIt<DeleteItemFromCartUseCase>().call(requestEntities);
    data.when(
      success: (data) async {
        data.items==null||data.items!.isEmpty?emit(CartState.successEmpty(cartModel: data)): emit(CartState.success(cartModel: data));
      },
      failure: (apiErrorModel) {
        emit(CartState.failure(error: apiErrorModel,cartModel:cartModel));
      },
      validation: (apiErrorModel) =>
          emit(CartState.validation(validation: apiErrorModel,cartModel:cartModel)),
    );
  }

}