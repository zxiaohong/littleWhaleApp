import 'package:json_annotation/json_annotation.dart'; 
  
part 'all_devices.g.dart';


@JsonSerializable()
  class AllDevices extends Object {

  @JsonKey(name: 'data')
  Data data;

  AllDevices(this.data,);

  factory AllDevices.fromJson(Map<String, dynamic> srcJson) => _$AllDevicesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AllDevicesToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'house_id')
  int houseId;

  @JsonKey(name: 'room_id')
  int roomId;

  @JsonKey(name: 'rooms')
  List<Rooms> rooms;

  Data(this.houseId,this.roomId,this.rooms,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class Rooms extends Object {

  @JsonKey(name: 'room_id')
  int roomId;

  @JsonKey(name: 'room_name')
  String roomName;

  @JsonKey(name: 'devices')
  List<Devices> devices;

  Rooms(this.roomId,this.roomName,this.devices,);

  factory Rooms.fromJson(Map<String, dynamic> srcJson) => _$RoomsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RoomsToJson(this);

}

  
@JsonSerializable()
  class Devices extends Object {

  @JsonKey(name: 'device_id')
  String deviceId;

  @JsonKey(name: 'device_name')
  String deviceName;

  @JsonKey(name: 'app_pic_url')
  String appPicUrl;

  @JsonKey(name: 'skill_id')
  String skillId;

  @JsonKey(name: 'category_name')
  String categoryName;

  @JsonKey(name: 'category_logo')
  String categoryLogo;

  @JsonKey(name: 'is_weilian')
  String isWeilian;

  Devices(this.deviceId,this.deviceName,this.appPicUrl,this.skillId,this.categoryName,this.categoryLogo,this.isWeilian,);

  factory Devices.fromJson(Map<String, dynamic> srcJson) => _$DevicesFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DevicesToJson(this);

}

  
