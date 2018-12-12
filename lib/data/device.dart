import 'package:json_annotation/json_annotation.dart'; 
  
part 'device.g.dart';


@JsonSerializable()
  class Device extends Object {

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

  Device(this.deviceId,this.deviceName,this.appPicUrl,this.skillId,this.categoryName,this.categoryLogo,this.isWeilian,);

  factory Device.fromJson(Map<String, dynamic> srcJson) => _$DeviceFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DeviceToJson(this);

}

  
