// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String?,
      is_cover: json['is_cover'] as bool?,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'is_cover': instance.is_cover,
    };
