import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_contact_list_bloc/models/address/address_model.dart';
import 'package:flutter_contact_list_bloc/models/company/company_model.dart';


part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  int id;
  String name;
  String username;
  AddressModel address;
  String phone;
  String website;
  CompanyModel company;

  UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}