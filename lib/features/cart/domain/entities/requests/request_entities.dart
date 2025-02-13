
import 'package:investment/features/product/data/models/product_model.dart';

class RequestEntities {
  ProductModel? productModel;
  int? quantity;

  RequestEntities({this.productModel, this.quantity});

  RequestEntities.fromJson(Map<String, dynamic> json) {
    productModel = json['productModel'];
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['productModel'] = productModel;
    data['quantity'] = quantity;
    return data;
  }


}