import 'package:flutter_application/data/model/destination_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'destination_dto.g.dart';

@JsonSerializable()
class DestinationDto extends DestinationModel {
  factory DestinationDto.fromJson(Map<String, dynamic> json) =>
      _$DestinationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DestinationDtoToJson(this);

  DestinationDto({
    required super.id,
    required super.imageUrl,
    required super.title,
    required super.rate,
    required super.durationDescription,
    required super.flights,
    required super.hotel,
    required super.transfer,
    required super.activity,
    required super.description,
    required super.price,
  });
}
