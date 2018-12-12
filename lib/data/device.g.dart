// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return Device(
      json['device_id'] as String,
      json['device_name'] as String,
      json['app_pic_url'] as String,
      json['skill_id'] as String,
      json['category_name'] as String,
      json['category_logo'] as String,
      json['is_weilian'] as String);
}

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
      'app_pic_url': instance.appPicUrl,
      'skill_id': instance.skillId,
      'category_name': instance.categoryName,
      'category_logo': instance.categoryLogo,
      'is_weilian': instance.isWeilian
    };
