import 'package:flutter_application/data/model/destination_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'destination_state.freezed.dart';

@freezed
abstract class DestinationState with _$DestinationState {
  const factory DestinationState(List<DestinationModel> models) = DestinationStateData;
  const factory DestinationState.loading() = DestinationStateLoading;
  const factory DestinationState.error(dynamic error) = DestinationStateError;
}