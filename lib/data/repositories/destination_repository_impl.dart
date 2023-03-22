import 'dart:math';

import 'package:flutter_application/data/model/destination_model.dart';
import 'package:flutter_application/data/repositories/discover_repository_impl.dart';
import 'package:flutter_application/domain/dto/destination_dto.dart';
import 'package:flutter_application/domain/repository/destination_repository.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class DestinationRepositoryImpl extends DestinationRepository {
  @override
  Future<List<DestinationModel>> getDestinationData() async {
    await Future.delayed(const Duration(seconds: 1));
    List<DestinationDto> models = [];
    for (int i = 0; i < 10; i++) {
      models.add(
        DestinationDto(
          id: random.nextInt(1000000),
          imageUrl: images[Random().nextInt(15)],
          title: lorem(paragraphs: 1, words: 5),
          rate: random.nextInt(4) + random.nextDouble(),
          durationDescription:
              " ${random.nextInt(3)}Days ${random.nextInt(4)}Nights",
          flights: random.nextInt(5),
          hotel: random.nextInt(5),
          transfer: random.nextInt(5),
          activity: random.nextInt(5),
          description: List.generate(
            random.nextInt(3),
            (index) => lorem(paragraphs: 1, words: 5),
          ),
          price: random.nextInt(100) + random.nextDouble(),
        ),
      );
    }
    return models;
  }
}
