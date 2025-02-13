import 'package:equatable/equatable.dart';
import '../../../../core/network/models/api_result.dart';
import '../entities/cart_model.dart';
import '../entities/requests/request_entities.dart';
import '../repository/web_service.dart';


class DeleteItemFromCartUseCase extends Equatable {
  final CartRepository cartRepository;
  const DeleteItemFromCartUseCase({required this.cartRepository});

  Future<ApiResult<CartModel>> call(RequestEntities requestEntities) async {
    return await cartRepository.deleteItemFromCart(requestEntities);
  }

  @override
  List<Object?> get props => [cartRepository];
}
