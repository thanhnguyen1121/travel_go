import 'dart:math';

import 'package:flutter_application/data/model/discover_model.dart';
import 'package:flutter_application/domain/dto/discover_dto.dart';
import 'package:flutter_application/domain/repository/discover_repository.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

Random random = Random();

List<String> images = [
  Assets.images.imgDiscoverOne.path,
  Assets.images.imgDiscoverTwo.path,
  Assets.images.imgDiscoverThree.path,
  Assets.images.imgAboutUsBanner.path,
  Assets.images.imgDiscoverHeaderBg.path,
  Assets.images.imgFancilityBg.path,
  Assets.images.imgAboutUs01.path,
  Assets.images.imgAboutUs02.path,
  Assets.images.imgServiceBg.path,
  Assets.images.imgAboutTravelGoo.path,
  Assets.images.imgPopularDestinationTwo.path,
  Assets.images.imgPopularDestinationOne.path,
  Assets.images.imgPopularDestinationThree.path,
  Assets.images.imgOurBestService.path,
  Assets.images.imgPeopleSayOne.path,
  Assets.images.imgPeopleSayTwo.path,
];

class DiscoverRepositoryImpl extends DiscoverRepository {
  @override
  Future<DiscoverModel> getDiscoverModel() async {
    await Future.delayed(const Duration(seconds: 1));
    final DiscoverDto model = DiscoverDto(
      id: random.nextInt(1000000),
      location: lorem(paragraphs: 1, words: 5),
      firstCharacter: lorem(paragraphs: 1, words: 1)[0],
      firstParagraph: lorem(paragraphs: 1, words: 100),
      secondParagraph: lorem(paragraphs: 2, words: 100),
      fourParagraph: lorem(paragraphs: 1, words: 100),
      fiveParagraph: lorem(paragraphs: 1, words: 100),
      sixParagraph: lorem(paragraphs: 1, words: 100),
      imageOne: images[random.nextInt(15)],
      highlightImage: [
        images[random.nextInt(15)],
        images[random.nextInt(15)]
      ],
      title: lorem(paragraphs: 1, words: 5),
    );
    return model;
  }

  @override
  Future<List<DiscoverModel>> getListDiscoverModelSuggest() async {
    await Future.delayed(const Duration(seconds: 1));
    List<DiscoverModel> models = [];
    for (int i = 0; i < Random().nextInt(10) + 2; i++) {
      final DiscoverDto model = DiscoverDto(
        id: Random().nextInt(1000000),
        location: lorem(paragraphs: 1, words: 5),
        firstCharacter: lorem(paragraphs: 1, words: 1)[0],
        firstParagraph: lorem(paragraphs: 1, words: 100),
        secondParagraph: lorem(paragraphs: 2, words: 100),
        fourParagraph: lorem(paragraphs: 1, words: 100),
        fiveParagraph: lorem(paragraphs: 1, words: 100),
        sixParagraph: lorem(paragraphs: 1, words: 100),
        imageOne: images[Random().nextInt(15)],
        highlightImage: [
          images[Random().nextInt(15)],
          images[Random().nextInt(15)]
        ],
        title: lorem(paragraphs: 1, words: 5),
      );
      models.add(model);
    }
    return models;
  }
}
