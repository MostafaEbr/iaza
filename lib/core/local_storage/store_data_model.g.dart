// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StoreDataModelAdapter extends TypeAdapter<StoreDataModel> {
  @override
  final int typeId = 0;

  @override
  StoreDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StoreDataModel(
      id: fields[0] as int,
      key: fields[1] as String,
      value: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StoreDataModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.key)
      ..writeByte(2)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StoreDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
