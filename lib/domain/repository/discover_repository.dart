import 'package:flutter_application/data/model/discover_model.dart';

abstract class DiscoverRepository{
  Future<DiscoverModel> getDiscoverModel();
  Future<List<DiscoverModel>> getListDiscoverModelSuggest();
}