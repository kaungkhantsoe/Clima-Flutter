import 'package:clima/model/clouds_model.dart';
import 'package:clima/model/coord_model.dart';
import 'package:clima/model/main_model.dart';
import 'package:clima/model/sys_model.dart';
import 'package:clima/model/mweather_model.dart';
import 'package:clima/model/wind_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather_response_model.g.dart';

@JsonSerializable()
class WeatherResponseModel {
  CoordModel coord;
  List<WeatherDescriptionModel> weather;
  String base;
  MainModel main;
  int visibility;
  WindModel wind;
  CloudsModel clouds;
  int dt;
  SysModel sys;
  int timezone;
  int id;
  String name;
  int cod;

  WeatherResponseModel(
      this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod);

  factory WeatherResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseModelToJson(this);
}
