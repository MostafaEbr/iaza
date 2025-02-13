
import '../../domain/entities/cart_model.dart';

class ResponseCartModel {
  CartModel? data;
  String? message;

  ResponseCartModel({this.data, this.message});

  ResponseCartModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new CartModel.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = message;
    return data;
  }


}