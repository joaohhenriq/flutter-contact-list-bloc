import 'package:json_annotation/json_annotation.dart';

import 'package:flutter_contact_list_bloc/models/address/address_model.dart';
import 'package:flutter_contact_list_bloc/models/company/company_model.dart';

part 'package:flutter_contact_list_bloc/models/user/user_model.g.dart';

@JsonSerializable()
class UserModel {
  int id;
  String name;
  String username;
  AddressModel addressModel;
  String phone;
  String website;
  CompanyModel companyModel;

  UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}