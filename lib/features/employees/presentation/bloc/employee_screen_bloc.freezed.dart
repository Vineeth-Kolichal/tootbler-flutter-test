// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeScreenEvent {
  int get cityIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cityIndex) getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cityIndex)? getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cityIndex)? getEmployeeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployeeList value) getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployeeList value)? getEmployeeList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployeeList value)? getEmployeeList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeScreenEventCopyWith<EmployeeScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeScreenEventCopyWith<$Res> {
  factory $EmployeeScreenEventCopyWith(
          EmployeeScreenEvent value, $Res Function(EmployeeScreenEvent) then) =
      _$EmployeeScreenEventCopyWithImpl<$Res, EmployeeScreenEvent>;
  @useResult
  $Res call({int cityIndex});
}

/// @nodoc
class _$EmployeeScreenEventCopyWithImpl<$Res, $Val extends EmployeeScreenEvent>
    implements $EmployeeScreenEventCopyWith<$Res> {
  _$EmployeeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityIndex = null,
  }) {
    return _then(_value.copyWith(
      cityIndex: null == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEmployeeListImplCopyWith<$Res>
    implements $EmployeeScreenEventCopyWith<$Res> {
  factory _$$GetEmployeeListImplCopyWith(_$GetEmployeeListImpl value,
          $Res Function(_$GetEmployeeListImpl) then) =
      __$$GetEmployeeListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cityIndex});
}

/// @nodoc
class __$$GetEmployeeListImplCopyWithImpl<$Res>
    extends _$EmployeeScreenEventCopyWithImpl<$Res, _$GetEmployeeListImpl>
    implements _$$GetEmployeeListImplCopyWith<$Res> {
  __$$GetEmployeeListImplCopyWithImpl(
      _$GetEmployeeListImpl _value, $Res Function(_$GetEmployeeListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityIndex = null,
  }) {
    return _then(_$GetEmployeeListImpl(
      cityIndex: null == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetEmployeeListImpl implements GetEmployeeList {
  const _$GetEmployeeListImpl({required this.cityIndex});

  @override
  final int cityIndex;

  @override
  String toString() {
    return 'EmployeeScreenEvent.getEmployeeList(cityIndex: $cityIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEmployeeListImpl &&
            (identical(other.cityIndex, cityIndex) ||
                other.cityIndex == cityIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEmployeeListImplCopyWith<_$GetEmployeeListImpl> get copyWith =>
      __$$GetEmployeeListImplCopyWithImpl<_$GetEmployeeListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cityIndex) getEmployeeList,
  }) {
    return getEmployeeList(cityIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cityIndex)? getEmployeeList,
  }) {
    return getEmployeeList?.call(cityIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cityIndex)? getEmployeeList,
    required TResult orElse(),
  }) {
    if (getEmployeeList != null) {
      return getEmployeeList(cityIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployeeList value) getEmployeeList,
  }) {
    return getEmployeeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployeeList value)? getEmployeeList,
  }) {
    return getEmployeeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployeeList value)? getEmployeeList,
    required TResult orElse(),
  }) {
    if (getEmployeeList != null) {
      return getEmployeeList(this);
    }
    return orElse();
  }
}

abstract class GetEmployeeList implements EmployeeScreenEvent {
  const factory GetEmployeeList({required final int cityIndex}) =
      _$GetEmployeeListImpl;

  @override
  int get cityIndex;
  @override
  @JsonKey(ignore: true)
  _$$GetEmployeeListImplCopyWith<_$GetEmployeeListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeScreenState {
  int get cityIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeScreenStateCopyWith<EmployeeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeScreenStateCopyWith<$Res> {
  factory $EmployeeScreenStateCopyWith(
          EmployeeScreenState value, $Res Function(EmployeeScreenState) then) =
      _$EmployeeScreenStateCopyWithImpl<$Res, EmployeeScreenState>;
  @useResult
  $Res call({int cityIndex});
}

/// @nodoc
class _$EmployeeScreenStateCopyWithImpl<$Res, $Val extends EmployeeScreenState>
    implements $EmployeeScreenStateCopyWith<$Res> {
  _$EmployeeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityIndex = null,
  }) {
    return _then(_value.copyWith(
      cityIndex: null == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EmployeeScreenStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cityIndex});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EmployeeScreenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityIndex = null,
  }) {
    return _then(_$InitialImpl(
      cityIndex: null == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({required this.cityIndex});

  @override
  final int cityIndex;

  @override
  String toString() {
    return 'EmployeeScreenState(cityIndex: $cityIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.cityIndex, cityIndex) ||
                other.cityIndex == cityIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EmployeeScreenState {
  const factory _Initial({required final int cityIndex}) = _$InitialImpl;

  @override
  int get cityIndex;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
