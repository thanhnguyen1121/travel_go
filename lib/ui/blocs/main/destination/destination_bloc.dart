import 'package:flutter_application/data/model/destination_model.dart';
import 'package:flutter_application/domain/repository/destination_repository.dart';
import 'package:flutter_application/ui/blocs/main/destination/destination_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class DestinationBloc extends Cubit<DestinationState> {
  final destinationRepo = GetIt.instance.get<DestinationRepository>();

  DestinationBloc() : super(const DestinationState.loading());

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 1));
    List<DestinationModel> models = await destinationRepo.getDestinationData();
    emit(DestinationState(models));
  }
}
