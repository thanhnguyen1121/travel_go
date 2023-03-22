// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_discover_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoreDiscoverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DiscoverModel> data)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MoreDiscoverStateData value) $default, {
    required TResult Function(MoreDiscoverStateLoading value) loading,
    required TResult Function(MoreDiscoverStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MoreDiscoverStateData value)? $default, {
    TResult? Function(MoreDiscoverStateLoading value)? loading,
    TResult? Function(MoreDiscoverStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MoreDiscoverStateData value)? $default, {
    TResult Function(MoreDiscoverStateLoading value)? loading,
    TResult Function(MoreDiscoverStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreDiscoverStateCopyWith<$Res> {
  factory $MoreDiscoverStateCopyWith(
          MoreDiscoverState value, $Res Function(MoreDiscoverState) then) =
      _$MoreDiscoverStateCopyWithImpl<$Res, MoreDiscoverState>;
}

/// @nodoc
class _$MoreDiscoverStateCopyWithImpl<$Res, $Val extends MoreDiscoverState>
    implements $MoreDiscoverStateCopyWith<$Res> {
  _$MoreDiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MoreDiscoverStateDataCopyWith<$Res> {
  factory _$$MoreDiscoverStateDataCopyWith(_$MoreDiscoverStateData value,
          $Res Function(_$MoreDiscoverStateData) then) =
      __$$MoreDiscoverStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DiscoverModel> data});
}

/// @nodoc
class __$$MoreDiscoverStateDataCopyWithImpl<$Res>
    extends _$MoreDiscoverStateCopyWithImpl<$Res, _$MoreDiscoverStateData>
    implements _$$MoreDiscoverStateDataCopyWith<$Res> {
  __$$MoreDiscoverStateDataCopyWithImpl(_$MoreDiscoverStateData _value,
      $Res Function(_$MoreDiscoverStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MoreDiscoverStateData(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DiscoverModel>,
    ));
  }
}

/// @nodoc

class _$MoreDiscoverStateData implements MoreDiscoverStateData {
  const _$MoreDiscoverStateData(final List<DiscoverModel> data) : _data = data;

  final List<DiscoverModel> _data;
  @override
  List<DiscoverModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MoreDiscoverState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoreDiscoverStateData &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoreDiscoverStateDataCopyWith<_$MoreDiscoverStateData> get copyWith =>
      __$$MoreDiscoverStateDataCopyWithImpl<_$MoreDiscoverStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DiscoverModel> data)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return $default?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MoreDiscoverStateData value) $default, {
    required TResult Function(MoreDiscoverStateLoading value) loading,
    required TResult Function(MoreDiscoverStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MoreDiscoverStateData value)? $default, {
    TResult? Function(MoreDiscoverStateLoading value)? loading,
    TResult? Function(MoreDiscoverStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MoreDiscoverStateData value)? $default, {
    TResult Function(MoreDiscoverStateLoading value)? loading,
    TResult Function(MoreDiscoverStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MoreDiscoverStateData implements MoreDiscoverState {
  const factory MoreDiscoverStateData(final List<DiscoverModel> data) =
      _$MoreDiscoverStateData;

  List<DiscoverModel> get data;
  @JsonKey(ignore: true)
  _$$MoreDiscoverStateDataCopyWith<_$MoreDiscoverStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoreDiscoverStateLoadingCopyWith<$Res> {
  factory _$$MoreDiscoverStateLoadingCopyWith(_$MoreDiscoverStateLoading value,
          $Res Function(_$MoreDiscoverStateLoading) then) =
      __$$MoreDiscoverStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoreDiscoverStateLoadingCopyWithImpl<$Res>
    extends _$MoreDiscoverStateCopyWithImpl<$Res, _$MoreDiscoverStateLoading>
    implements _$$MoreDiscoverStateLoadingCopyWith<$Res> {
  __$$MoreDiscoverStateLoadingCopyWithImpl(_$MoreDiscoverStateLoading _value,
      $Res Function(_$MoreDiscoverStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoreDiscoverStateLoading implements MoreDiscoverStateLoading {
  const _$MoreDiscoverStateLoading();

  @override
  String toString() {
    return 'MoreDiscoverState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoreDiscoverStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DiscoverModel> data)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data)? $default, {
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
    TResult Function(MoreDiscoverStateData value) $default, {
    required TResult Function(MoreDiscoverStateLoading value) loading,
    required TResult Function(MoreDiscoverStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MoreDiscoverStateData value)? $default, {
    TResult? Function(MoreDiscoverStateLoading value)? loading,
    TResult? Function(MoreDiscoverStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MoreDiscoverStateData value)? $default, {
    TResult Function(MoreDiscoverStateLoading value)? loading,
    TResult Function(MoreDiscoverStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoreDiscoverStateLoading implements MoreDiscoverState {
  const factory MoreDiscoverStateLoading() = _$MoreDiscoverStateLoading;
}

/// @nodoc
abstract class _$$MoreDiscoverStateErrorCopyWith<$Res> {
  factory _$$MoreDiscoverStateErrorCopyWith(_$MoreDiscoverStateError value,
          $Res Function(_$MoreDiscoverStateError) then) =
      __$$MoreDiscoverStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$MoreDiscoverStateErrorCopyWithImpl<$Res>
    extends _$MoreDiscoverStateCopyWithImpl<$Res, _$MoreDiscoverStateError>
    implements _$$MoreDiscoverStateErrorCopyWith<$Res> {
  __$$MoreDiscoverStateErrorCopyWithImpl(_$MoreDiscoverStateError _value,
      $Res Function(_$MoreDiscoverStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$MoreDiscoverStateError(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$MoreDiscoverStateError implements MoreDiscoverStateError {
  const _$MoreDiscoverStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'MoreDiscoverState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoreDiscoverStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoreDiscoverStateErrorCopyWith<_$MoreDiscoverStateError> get copyWith =>
      __$$MoreDiscoverStateErrorCopyWithImpl<_$MoreDiscoverStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<DiscoverModel> data)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<DiscoverModel> data)? $default, {
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
    TResult Function(MoreDiscoverStateData value) $default, {
    required TResult Function(MoreDiscoverStateLoading value) loading,
    required TResult Function(MoreDiscoverStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MoreDiscoverStateData value)? $default, {
    TResult? Function(MoreDiscoverStateLoading value)? loading,
    TResult? Function(MoreDiscoverStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MoreDiscoverStateData value)? $default, {
    TResult Function(MoreDiscoverStateLoading value)? loading,
    TResult Function(MoreDiscoverStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MoreDiscoverStateError implements MoreDiscoverState {
  const factory MoreDiscoverStateError(final dynamic error) =
      _$MoreDiscoverStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$MoreDiscoverStateErrorCopyWith<_$MoreDiscoverStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
