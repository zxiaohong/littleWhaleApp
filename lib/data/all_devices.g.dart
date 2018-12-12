// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_devices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllDevices _$AllDevicesFromJson(Map<String, dynamic> json) {
  return AllDevices(json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>));
}

Map<String, dynamic> _$AllDevicesToJson(AllDevices instance) =>
    <String, dynamic>{'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      json['house_id'] as int,
      json['room_id'] as int,
      (json['rooms'] as List)
          ?.map((e) =>
              e == null ? null : Rooms.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'house_id': instance.houseId,
      'room_id': instance.roomId,
      'rooms': instance.rooms
    };

Rooms _$RoomsFromJson(Map<String, dynamic> json) {
  return Rooms(
      json['room_id'] as int,
      json['room_name'] as String,
      (json['devices'] as List)
          ?.map((e) =>
              e == null ? null : Devices.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$RoomsToJson(Rooms instance) => <String, dynamic>{
      'room_id': instance.roomId,
      'room_name': instance.roomName,
      'devices': instance.devices
    };

Devices _$DevicesFromJson(Map<String, dynamic> json) {
  return Devices(
      json['device_id'] as String,
      json['device_name'] as String,
      json['app_pic_url'] as String,
      json['skill_id'] as String,
      json['category_name'] as String,
      json['category_logo'] as String,
      json['is_weilian'] as String);
}

Map<String, dynamic> _$DevicesToJson(Devices instance) => <String, dynamic>{
      'device_id': instance.deviceId,
      'device_name': instance.deviceName,
      'app_pic_url': instance.appPicUrl,
      'skill_id': instance.skillId,
      'category_name': instance.categoryName,
      'category_logo': instance.categoryLogo,
      'is_weilian': instance.isWeilian
    };
