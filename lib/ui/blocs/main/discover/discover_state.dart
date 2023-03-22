import 'package:flutter_application/data/model/discover_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_state.freezed.dart';

@freezed
abstract class DiscoverState with _$DiscoverState {
  const factory DiscoverState(
    DiscoverModel discoverModel,
    List<DiscoverModel> otherDiscover,
  ) = DiscoverStateData;

  const factory DiscoverState.loading() = DiscoverStateLoading;

  const factory DiscoverState.error(dynamic error) = DiscoverStateError;
}
