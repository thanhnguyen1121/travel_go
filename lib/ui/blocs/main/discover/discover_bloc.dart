import 'package:flutter_application/domain/repository/discover_repository.dart';
import 'package:flutter_application/ui/blocs/main/discover/discover_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class DiscoverBloc extends Cubit<DiscoverState> {
  final _discoverRepository = GetIt.instance.get<DiscoverRepository>();

  DiscoverBloc() : super(const DiscoverState.loading());

  Future<void> init(int discoverId) async {
    final discoverModel = await _discoverRepository.getDiscoverModel();
    final discoverSuggestion =
        await _discoverRepository.getListDiscoverModelSuggest();
    emit(DiscoverState(discoverModel, discoverSuggestion));
  }
}
