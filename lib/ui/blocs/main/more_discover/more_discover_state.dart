import 'package:flutter_application/data/model/discover_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_discover_state.freezed.dart';

@freezed
abstract class MoreDiscoverState with _$MoreDiscoverState {
  const factory MoreDiscoverState(List<DiscoverModel> data) =
      MoreDiscoverStateData;

  const factory MoreDiscoverState.loading() = MoreDiscoverStateLoading;

  const factory MoreDiscoverState.error(dynamic error) = MoreDiscoverStateError;
}
