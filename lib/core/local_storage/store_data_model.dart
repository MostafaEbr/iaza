import 'package:hive/hive.dart';
part 'store_data_model.g.dart';

@HiveType(typeId: 0)
class StoreDataModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String key;

  @HiveField(2)
  final String value;

  StoreDataModel({this.id=0,required this.key, required this.value});
}


