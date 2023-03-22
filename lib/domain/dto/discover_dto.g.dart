// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverDto _$DiscoverDtoFromJson(Map<String, dynamic> json) => DiscoverDto(
      id: json['id'] as int,
      firstCharacter: json['firstCharacter'] as String,
      firstParagraph: json['firstParagraph'] as String,
      secondParagraph: json['secondParagraph'] as String,
      imageOne: json['imageOne'] as String,
      title: json['title'] as String,
      location: json['location'] as String,
      fourParagraph: json['fourParagraph'] as String,
      fiveParagraph: json['fiveParagraph'] as String,
      highlightImage: (json['highlightImage'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      sixParagraph: json['sixParagraph'] as String,
    );

Map<String, dynamic> _$DiscoverDtoToJson(DiscoverDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstCharacter': instance.firstCharacter,
      'firstParagraph': instance.firstParagraph,
      'secondParagraph': instance.secondParagraph,
      'imageOne': instance.imageOne,
      'title': instance.title,
      'location': instance.location,
      'fourParagraph': instance.fourParagraph,
      'fiveParagraph': instance.fiveParagraph,
      'highlightImage': instance.highlightImage,
      'sixParagraph': instance.sixParagraph,
    };
