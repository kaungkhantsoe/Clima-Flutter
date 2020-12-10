import 'package:json_annotation/json_annotation.dart';

part 'sys_model.g.dart';

@JsonSerializable()
class SysModel {
  int type;
  int id;
  String country;
  int sunrise;
  int sunset;

  SysModel({this.type, this.id, this.country, this.sunrise, this.sunset});

  factory SysModel.fromJson(Map<String, dynamic> json) =>
      _$SysModelFromJson(json);

  Map<String, dynamic> toJson() => _$SysModelToJson(this);
}
