



import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'image_model.freezed.dart';
part 'image_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ImageModel extends Equatable with _$ImageModel {
  const ImageModel._();

  const factory ImageModel({
    required int id ,
    String? image ,
    bool? is_cover ,
  }) = _ImageModel;


  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => toJson();


  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
    id ,
    image,
    is_cover

  ];
}