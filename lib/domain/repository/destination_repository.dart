import 'package:flutter_application/data/model/destination_model.dart';

abstract class DestinationRepository {
  Future<List<DestinationModel>> getDestinationData();
}
