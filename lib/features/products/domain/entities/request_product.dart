class RequestProducts {
  final int? category;
  final int? subcategory;
  final int? brand;

  RequestProducts({this.category, this.subcategory, this.brand});

  // Convert the class instance to a JSON map, excluding null values
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    if (category != null) data['category'] = category;
    if (subcategory != null) data['subcategory'] = subcategory;
    if (brand != null) data['brand'] = brand;

    return data;
  }
}
