// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoModel _$GeoModelFromJson(Map<String, dynamic> json) {
  return GeoModel()
    ..lat = (json['lat'] as num)?.toDouble()
    ..lng = (json['lng'] as num)?.toDouble();
}

Map<String, dynamic> _$GeoModelToJson(GeoModel instance) => <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
