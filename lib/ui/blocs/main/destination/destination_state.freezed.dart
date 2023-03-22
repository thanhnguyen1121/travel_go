// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DestinationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DestinationModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DestinationModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DestinationModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DestinationStateData value) $default, {
    required TResult Function(DestinationStateLoading value) loading,
    required TResult Function(DestinationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DestinationStateData value)? $default, {
    TResult? Function(DestinationStateLoading value)? loading,
    TResult? Function(DestinationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DestinationStateData value)? $default, {
    TResult Function(DestinationStateLoading value)? loading,
    TResult Function(DestinationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DestinationStateCopyWith<$Res> {
  factory $DestinationStateCopyWith(
          DestinationState value, $Res Function(DestinationState) then) =
      _$DestinationStateCopyWithImpl<$Res, DestinationState>;
}

/// @nodoc
class _$DestinationStateCopyWithImpl<$Res, $Val extends DestinationState>
    implements $DestinationStateCopyWith<$Res> {
  _$DestinationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DestinationStateDataCopyWith<$Res> {
  factory _$$DestinationStateDataCopyWith(_$DestinationStateData value,
          $Res Function(_$DestinationStateData) then) =
      __$$DestinationStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DestinationModel> models});
}

/// @nodoc
class __$$DestinationStateDataCopyWithImpl<$Res>
    extends _$DestinationStateCopyWithImpl<$Res, _$DestinationStateData>
    implements _$$DestinationStateDataCopyWith<$Res> {
  __$$DestinationStateDataCopyWithImpl(_$DestinationStateData _value,
      $Res Function(_$DestinationStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$DestinationStateData(
      null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<DestinationModel>,
    ));
  }
}

/// @nodoc

class _$DestinationStateData implements DestinationStateData {
  const _$DestinationStateData(final List<DestinationModel> models)
      : _models = models;

  final List<DestinationModel> _models;
  @override
  List<DestinationModel> get models {
    if (_models is EqualUnmodifiableListView) return _models;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString() {
    return 'DestinationState(models: $models)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationStateData &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationStateDataCopyWith<_$DestinationStateData> get copyWith =>
      __$$DestinationStateDataCopyWithImpl<_$DestinationStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DestinationModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(models);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DestinationModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return $default?.call(models);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DestinationModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(models);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DestinationStateData value) $default, {
    required TResult Function(DestinationStateLoading value) loading,
    required TResult Function(DestinationStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DestinationStateData value)? $default, {
    TResult? Function(DestinationStateLoading value)? loading,
    TResult? Function(DestinationStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DestinationStateData value)? $default, {
    TResult Function(DestinationStateLoading value)? loading,
    TResult Function(DestinationStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DestinationStateData implements DestinationState {
  const factory DestinationStateData(final List<DestinationModel> models) =
      _$DestinationStateData;

  List<DestinationModel> get models;
  @JsonKey(ignore: true)
  _$$DestinationStateDataCopyWith<_$DestinationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DestinationStateLoadingCopyWith<$Res> {
  factory _$$DestinationStateLoadingCopyWith(_$DestinationStateLoading value,
          $Res Function(_$DestinationStateLoading) then) =
      __$$DestinationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DestinationStateLoadingCopyWithImpl<$Res>
    extends _$DestinationStateCopyWithImpl<$Res, _$DestinationStateLoading>
    implements _$$DestinationStateLoadingCopyWith<$Res> {
  __$$DestinationStateLoadingCopyWithImpl(_$DestinationStateLoading _value,
      $Res Function(_$DestinationStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DestinationStateLoading implements DestinationStateLoading {
  const _$DestinationStateLoading();

  @override
  String toString() {
    return 'DestinationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DestinationModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DestinationModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DestinationModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DestinationStateData value) $default, {
    required TResult Function(DestinationStateLoading value) loading,
    required TResult Function(DestinationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DestinationStateData value)? $default, {
    TResult? Function(DestinationStateLoading value)? loading,
    TResult? Function(DestinationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DestinationStateData value)? $default, {
    TResult Function(DestinationStateLoading value)? loading,
    TResult Function(DestinationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DestinationStateLoading implements DestinationState {
  const factory DestinationStateLoading() = _$DestinationStateLoading;
}

/// @nodoc
abstract class _$$DestinationStateErrorCopyWith<$Res> {
  factory _$$DestinationStateErrorCopyWith(_$DestinationStateError value,
          $Res Function(_$DestinationStateError) then) =
      __$$DestinationStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$DestinationStateErrorCopyWithImpl<$Res>
    extends _$DestinationStateCopyWithImpl<$Res, _$DestinationStateError>
    implements _$$DestinationStateErrorCopyWith<$Res> {
  __$$DestinationStateErrorCopyWithImpl(_$DestinationStateError _value,
      $Res Function(_$DestinationStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DestinationStateError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DestinationStateError implements DestinationStateError {
  const _$DestinationStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'DestinationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DestinationStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DestinationStateErrorCopyWith<_$DestinationStateError> get copyWith =>
      __$$DestinationStateErrorCopyWithImpl<_$DestinationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DestinationModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DestinationModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DestinationModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DestinationStateData value) $default, {
    required TResult Function(DestinationStateLoading value) loading,
    required TResult Function(DestinationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DestinationStateData value)? $default, {
    TResult? Function(DestinationStateLoading value)? loading,
    TResult? Function(DestinationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DestinationStateData value)? $default, {
    TResult Function(DestinationStateLoading value)? loading,
    TResult Function(DestinationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DestinationStateError implements DestinationState {
  const factory DestinationStateError(final dynamic error) =
      _$DestinationStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$DestinationStateErrorCopyWith<_$DestinationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
