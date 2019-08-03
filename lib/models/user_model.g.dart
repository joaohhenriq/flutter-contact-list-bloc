// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return UserModel()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..username = json['username'] as String
    ..addressModel = json['addressModel'] == null
        ? null
        : AddressModel.fromJson(json['addressModel'] as Map<String, dynamic>)
    ..phone = json['phone'] as String
    ..website = json['website'] as String
    ..companyModel = json['companyModel'] == null
        ? null
        : CompanyModel.fromJson(json['companyModel'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'addressModel': instance.addressModel,
      'phone': instance.phone,
      'website': instance.website,
      'companyModel': instance.companyModel,
    };
