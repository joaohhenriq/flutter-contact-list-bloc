import 'package:json_annotation/json_annotation.dart';

part 'geo_model.g.dart';

@JsonSerializable()
class GeoModel {
  double lat;
  double lng;

  GeoModel();

  factory GeoModel.fromJson(Map<String, dynamic> json) => _$GeoModelFromJson(json);
  Map<String, dynamic> toJson() => _$GeoModelToJson(this);
}