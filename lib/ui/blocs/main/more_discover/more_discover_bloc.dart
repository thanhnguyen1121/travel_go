import 'package:flutter_application/data/model/discover_model.dart';
import 'package:flutter_application/domain/repository/discover_repository.dart';
import 'package:flutter_application/ui/blocs/main/discover/discover_state.dart';
import 'package:flutter_application/ui/blocs/main/more_discover/more_discover_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MoreDiscoverBloc extends Cubit<MoreDiscoverState>{

  final _discoverRepository = GetIt.instance.get<DiscoverRepository>();

  int currentPage = 1;
  MoreDiscoverBloc() : super(const MoreDiscoverState.loading());

  Future<void> init() async {
    List<DiscoverModel> data = await loadDiscoverData();
    emit(MoreDiscoverState(data));
  }

  Future<List<DiscoverModel>> loadDiscoverData() async {
    if(currentPage++ < 5){
      return await _discoverRepository.getListDiscoverModelSuggest();
    }
    return [];
  }

}