import 'package:json_annotation/json_annotation.dart';

part 'mweather_model.g.dart';

@JsonSerializable()
class WeatherDescriptionModel {
  int id;
  String main;
  String description;
  String icon;

  WeatherDescriptionModel({this.id, this.main, this.description, this.icon});

  factory WeatherDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$MWeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$MWeatherModelToJson(this);
}
