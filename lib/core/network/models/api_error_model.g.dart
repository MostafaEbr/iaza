// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: json['errors'],
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'errors': instance.errors,
    };
