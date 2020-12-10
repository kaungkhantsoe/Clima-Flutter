import 'package:json_annotation/json_annotation.dart';

part 'coord_model.g.dart';

@JsonSerializable()
class CoordModel {
  double lon;
  double lat;

  CoordModel({this.lon, this.lat});

  factory CoordModel.fromJson(Map<String, dynamic> json) =>
      _$CoordModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoordModelToJson(this);
}
