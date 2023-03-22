import 'package:flutter_application/data/model/discover_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discover_dto.g.dart';

@JsonSerializable()
class DiscoverDto extends DiscoverModel {
  DiscoverDto({
    required super.id,
    required super.firstCharacter,
    required super.firstParagraph,
    required super.secondParagraph,
    required super.imageOne,
    required super.title,
    required super.location,
    required super.fourParagraph,
    required super.fiveParagraph,
    required super.highlightImage,
    required super.sixParagraph,
  });

  factory DiscoverDto.fromJson(Map<String, dynamic> json) =>
      _$DiscoverDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DiscoverDtoToJson(this);
}
