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
    ..address = json['address'] == null
        ? null
        : AddressModel.fromJson(json['address'] as Map<String, dynamic>)
    ..phone = json['phone'] as String
    ..website = json['website'] as String
    ..company = json['company'] == null
        ? null
        : CompanyModel.fromJson(json['company'] as Map<String, dynamic>);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };
