import 'package:json_annotation/json_annotation.dart';

part 'main_model.g.dart';

@JsonSerializable()
class MainModel {
  double temp;
  double feels_like;
  double temp_min;
  double tem_max;
  int pressure;
  int humidity;

  MainModel(
      {this.temp,
      this.feels_like,
      this.temp_min,
      this.tem_max,
      this.pressure,
      this.humidity});

  factory MainModel.fromJson(Map<String, dynamic> json) =>
      _$MainModelFromJson(json);

  Map<String, dynamic> toJson() => _$MainModelToJson(this);
}
