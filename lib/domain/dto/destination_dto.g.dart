// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationDto _$DestinationDtoFromJson(Map<String, dynamic> json) =>
    DestinationDto(
      id: json['id'] as int,
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      rate: (json['rate'] as num).toDouble(),
      durationDescription: json['durationDescription'] as String,
      flights: json['flights'] as int,
      hotel: json['hotel'] as int,
      transfer: json['transfer'] as int,
      activity: json['activity'] as int,
      description: (json['description'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$DestinationDtoToJson(DestinationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'rate': instance.rate,
      'durationDescription': instance.durationDescription,
      'flights': instance.flights,
      'hotel': instance.hotel,
      'transfer': instance.transfer,
      'activity': instance.activity,
      'description': instance.description,
      'price': instance.price,
    };
