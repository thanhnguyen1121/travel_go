// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DiscoverStateData value) $default, {
    required TResult Function(DiscoverStateLoading value) loading,
    required TResult Function(DiscoverStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DiscoverStateData value)? $default, {
    TResult? Function(DiscoverStateLoading value)? loading,
    TResult? Function(DiscoverStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DiscoverStateData value)? $default, {
    TResult Function(DiscoverStateLoading value)? loading,
    TResult Function(DiscoverStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DiscoverStateDataCopyWith<$Res> {
  factory _$$DiscoverStateDataCopyWith(
          _$DiscoverStateData value, $Res Function(_$DiscoverStateData) then) =
      __$$DiscoverStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({DiscoverModel discoverModel, List<DiscoverModel> otherDiscover});
}

/// @nodoc
class __$$DiscoverStateDataCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateData>
    implements _$$DiscoverStateDataCopyWith<$Res> {
  __$$DiscoverStateDataCopyWithImpl(
      _$DiscoverStateData _value, $Res Function(_$DiscoverStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discoverModel = null,
    Object? otherDiscover = null,
  }) {
    return _then(_$DiscoverStateData(
      null == discoverModel
          ? _value.discoverModel
          : discoverModel // ignore: cast_nullable_to_non_nullable
              as DiscoverModel,
      null == otherDiscover
          ? _value._otherDiscover
          : otherDiscover // ignore: cast_nullable_to_non_nullable
              as List<DiscoverModel>,
    ));
  }
}

/// @nodoc

class _$DiscoverStateData implements DiscoverStateData {
  const _$DiscoverStateData(
      this.discoverModel, final List<DiscoverModel> otherDiscover)
      : _otherDiscover = otherDiscover;

  @override
  final DiscoverModel discoverModel;
  final List<DiscoverModel> _otherDiscover;
  @override
  List<DiscoverModel> get otherDiscover {
    if (_otherDiscover is EqualUnmodifiableListView) return _otherDiscover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherDiscover);
  }

  @override
  String toString() {
    return 'DiscoverState(discoverModel: $discoverModel, otherDiscover: $otherDiscover)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateData &&
            (identical(other.discoverModel, discoverModel) ||
                other.discoverModel == discoverModel) &&
            const DeepCollectionEquality()
                .equals(other._otherDiscover, _otherDiscover));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discoverModel,
      const DeepCollectionEquality().hash(_otherDiscover));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateDataCopyWith<_$DiscoverStateData> get copyWith =>
      __$$DiscoverStateDataCopyWithImpl<_$DiscoverStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(discoverModel, otherDiscover);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return $default?.call(discoverModel, otherDiscover);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(discoverModel, otherDiscover);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DiscoverStateData value) $default, {
    required TResult Function(DiscoverStateLoading value) loading,
    required TResult Function(DiscoverStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DiscoverStateData value)? $default, {
    TResult? Function(DiscoverStateLoading value)? loading,
    TResult? Function(DiscoverStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DiscoverStateData value)? $default, {
    TResult Function(DiscoverStateLoading value)? loading,
    TResult Function(DiscoverStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DiscoverStateData implements DiscoverState {
  const factory DiscoverStateData(final DiscoverModel discoverModel,
      final List<DiscoverModel> otherDiscover) = _$DiscoverStateData;

  DiscoverModel get discoverModel;
  List<DiscoverModel> get otherDiscover;
  @JsonKey(ignore: true)
  _$$DiscoverStateDataCopyWith<_$DiscoverStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DiscoverStateLoadingCopyWith<$Res> {
  factory _$$DiscoverStateLoadingCopyWith(_$DiscoverStateLoading value,
          $Res Function(_$DiscoverStateLoading) then) =
      __$$DiscoverStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DiscoverStateLoadingCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateLoading>
    implements _$$DiscoverStateLoadingCopyWith<$Res> {
  __$$DiscoverStateLoadingCopyWithImpl(_$DiscoverStateLoading _value,
      $Res Function(_$DiscoverStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DiscoverStateLoading implements DiscoverStateLoading {
  const _$DiscoverStateLoading();

  @override
  String toString() {
    return 'DiscoverState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DiscoverStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
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
    TResult Function(DiscoverStateData value) $default, {
    required TResult Function(DiscoverStateLoading value) loading,
    required TResult Function(DiscoverStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DiscoverStateData value)? $default, {
    TResult? Function(DiscoverStateLoading value)? loading,
    TResult? Function(DiscoverStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DiscoverStateData value)? $default, {
    TResult Function(DiscoverStateLoading value)? loading,
    TResult Function(DiscoverStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DiscoverStateLoading implements DiscoverState {
  const factory DiscoverStateLoading() = _$DiscoverStateLoading;
}

/// @nodoc
abstract class _$$DiscoverStateErrorCopyWith<$Res> {
  factory _$$DiscoverStateErrorCopyWith(_$DiscoverStateError value,
          $Res Function(_$DiscoverStateError) then) =
      __$$DiscoverStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$DiscoverStateErrorCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateError>
    implements _$$DiscoverStateErrorCopyWith<$Res> {
  __$$DiscoverStateErrorCopyWithImpl(
      _$DiscoverStateError _value, $Res Function(_$DiscoverStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DiscoverStateError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DiscoverStateError implements DiscoverStateError {
  const _$DiscoverStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'DiscoverState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateErrorCopyWith<_$DiscoverStateError> get copyWith =>
      __$$DiscoverStateErrorCopyWithImpl<_$DiscoverStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)
        $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            DiscoverModel discoverModel, List<DiscoverModel> otherDiscover)?
        $default, {
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
    TResult Function(DiscoverStateData value) $default, {
    required TResult Function(DiscoverStateLoading value) loading,
    required TResult Function(DiscoverStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DiscoverStateData value)? $default, {
    TResult? Function(DiscoverStateLoading value)? loading,
    TResult? Function(DiscoverStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DiscoverStateData value)? $default, {
    TResult Function(DiscoverStateLoading value)? loading,
    TResult Function(DiscoverStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DiscoverStateError implements DiscoverState {
  const factory DiscoverStateError(final dynamic error) = _$DiscoverStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$DiscoverStateErrorCopyWith<_$DiscoverStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
