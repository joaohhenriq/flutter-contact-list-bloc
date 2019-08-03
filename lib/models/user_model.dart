import 'package:json_annotation/json_annotation.dart';

import 'address_model.dart';
import 'company_model.dart';

part 'user_model.g.dart';

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