import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_contact_list_bloc/models/geo/geo_model.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel {
  String street;
  String suite;
  String city;
  String zipcode;
  GeoModel geo;

  AddressModel();

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);
}