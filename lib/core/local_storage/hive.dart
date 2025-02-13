import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'store_data_model.dart';

class HiveHelper<T> {
  late final Box<StoreDataModel> _box;

  HiveHelper._(this._box);

  // For initial store data by using Hive
  static Future<HiveHelper> initialHive() async {
    final docsDir = await getApplicationDocumentsDirectory();
    Hive.init(docsDir.path);
    Hive.registerAdapter(StoreDataModelAdapter());
    final box = await Hive.openBox<StoreDataModel>('Attendo');
    return HiveHelper._(box);
  }

  StoreDataModel? readData(String key) {
    return _box.get(key);
  }

  Future<void> writeData(StoreDataModel storeData) async {
    await _box.put(storeData.key, storeData);
  }

  Future<void> updateData(StoreDataModel storeData) async {
    if (_box.containsKey(storeData.key)) {
      await _box.put(storeData.key, storeData);
    } else {
      await writeData(storeData);
    }
  }

  Future<void> removeByKeyData(String key) async {
    await _box.delete(key);
  }

  Future<void> removeAllData() async {
    await _box.clear();
  }

  // Close the box when done
  Future<void> close() async {
    await _box.close();
  }
}
