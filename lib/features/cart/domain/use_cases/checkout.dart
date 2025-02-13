import 'package:equatable/equatable.dart';
import '../../../../core/network/models/api_result.dart';
import '../entities/cart_model.dart';
import '../repository/web_service.dart';


class CheckoutCartUseCase extends Equatable {
  final CartRepository cartRepository;
  const CheckoutCartUseCase({required this.cartRepository});

  Future<ApiResult<CartModel>> call() async {
    return await cartRepository.checkout();
  }

  @override
  List<Object?> get props => [cartRepository];
}
