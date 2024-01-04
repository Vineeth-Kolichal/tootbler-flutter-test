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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployeeList,
    required TResult Function(int cityIndex) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployeeList,
    TResult? Function(int cityIndex)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployeeList,
    TResult Function(int cityIndex)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployeeList value) getEmployeeList,
    required TResult Function(Filter value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployeeList value)? getEmployeeList,
    TResult? Function(Filter value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployeeList value)? getEmployeeList,
    TResult Function(Filter value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeScreenEventCopyWith<$Res> {
  factory $EmployeeScreenEventCopyWith(
          EmployeeScreenEvent value, $Res Function(EmployeeScreenEvent) then) =
      _$EmployeeScreenEventCopyWithImpl<$Res, EmployeeScreenEvent>;
}

/// @nodoc
class _$EmployeeScreenEventCopyWithImpl<$Res, $Val extends EmployeeScreenEvent>
    implements $EmployeeScreenEventCopyWith<$Res> {
  _$EmployeeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEmployeeListImplCopyWith<$Res> {
  factory _$$GetEmployeeListImplCopyWith(_$GetEmployeeListImpl value,
          $Res Function(_$GetEmployeeListImpl) then) =
      __$$GetEmployeeListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmployeeListImplCopyWithImpl<$Res>
    extends _$EmployeeScreenEventCopyWithImpl<$Res, _$GetEmployeeListImpl>
    implements _$$GetEmployeeListImplCopyWith<$Res> {
  __$$GetEmployeeListImplCopyWithImpl(
      _$GetEmployeeListImpl _value, $Res Function(_$GetEmployeeListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEmployeeListImpl implements GetEmployeeList {
  const _$GetEmployeeListImpl();

  @override
  String toString() {
    return 'EmployeeScreenEvent.getEmployeeList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEmployeeListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployeeList,
    required TResult Function(int cityIndex) filter,
  }) {
    return getEmployeeList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployeeList,
    TResult? Function(int cityIndex)? filter,
  }) {
    return getEmployeeList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployeeList,
    TResult Function(int cityIndex)? filter,
    required TResult orElse(),
  }) {
    if (getEmployeeList != null) {
      return getEmployeeList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployeeList value) getEmployeeList,
    required TResult Function(Filter value) filter,
  }) {
    return getEmployeeList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployeeList value)? getEmployeeList,
    TResult? Function(Filter value)? filter,
  }) {
    return getEmployeeList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployeeList value)? getEmployeeList,
    TResult Function(Filter value)? filter,
    required TResult orElse(),
  }) {
    if (getEmployeeList != null) {
      return getEmployeeList(this);
    }
    return orElse();
  }
}

abstract class GetEmployeeList implements EmployeeScreenEvent {
  const factory GetEmployeeList() = _$GetEmployeeListImpl;
}

/// @nodoc
abstract class _$$FilterImplCopyWith<$Res> {
  factory _$$FilterImplCopyWith(
          _$FilterImpl value, $Res Function(_$FilterImpl) then) =
      __$$FilterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cityIndex});
}

/// @nodoc
class __$$FilterImplCopyWithImpl<$Res>
    extends _$EmployeeScreenEventCopyWithImpl<$Res, _$FilterImpl>
    implements _$$FilterImplCopyWith<$Res> {
  __$$FilterImplCopyWithImpl(
      _$FilterImpl _value, $Res Function(_$FilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityIndex = null,
  }) {
    return _then(_$FilterImpl(
      cityIndex: null == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterImpl implements Filter {
  const _$FilterImpl({required this.cityIndex});

  @override
  final int cityIndex;

  @override
  String toString() {
    return 'EmployeeScreenEvent.filter(cityIndex: $cityIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterImpl &&
            (identical(other.cityIndex, cityIndex) ||
                other.cityIndex == cityIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      __$$FilterImplCopyWithImpl<_$FilterImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployeeList,
    required TResult Function(int cityIndex) filter,
  }) {
    return filter(cityIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployeeList,
    TResult? Function(int cityIndex)? filter,
  }) {
    return filter?.call(cityIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployeeList,
    TResult Function(int cityIndex)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(cityIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployeeList value) getEmployeeList,
    required TResult Function(Filter value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployeeList value)? getEmployeeList,
    TResult? Function(Filter value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployeeList value)? getEmployeeList,
    TResult Function(Filter value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class Filter implements EmployeeScreenEvent {
  const factory Filter({required final int cityIndex}) = _$FilterImpl;

  int get cityIndex;
  @JsonKey(ignore: true)
  _$$FilterImplCopyWith<_$FilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeScreenState {
  int get cityIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get err => throw _privateConstructorUsedError;
  List<EmployeeEntity> get empList => throw _privateConstructorUsedError;

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
  $Res call(
      {int cityIndex,
      bool isLoading,
      String? err,
      List<EmployeeEntity> empList});
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
    Object? isLoading = null,
    Object? err = freezed,
    Object? empList = null,
  }) {
    return _then(_value.copyWith(
      cityIndex: null == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      empList: null == empList
          ? _value.empList
          : empList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
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
  $Res call(
      {int cityIndex,
      bool isLoading,
      String? err,
      List<EmployeeEntity> empList});
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
    Object? isLoading = null,
    Object? err = freezed,
    Object? empList = null,
  }) {
    return _then(_$InitialImpl(
      cityIndex: null == cityIndex
          ? _value.cityIndex
          : cityIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      err: freezed == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String?,
      empList: null == empList
          ? _value._empList
          : empList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.cityIndex,
      required this.isLoading,
      required this.err,
      required final List<EmployeeEntity> empList})
      : _empList = empList;

  @override
  final int cityIndex;
  @override
  final bool isLoading;
  @override
  final String? err;
  final List<EmployeeEntity> _empList;
  @override
  List<EmployeeEntity> get empList {
    if (_empList is EqualUnmodifiableListView) return _empList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_empList);
  }

  @override
  String toString() {
    return 'EmployeeScreenState(cityIndex: $cityIndex, isLoading: $isLoading, err: $err, empList: $empList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.cityIndex, cityIndex) ||
                other.cityIndex == cityIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.err, err) || other.err == err) &&
            const DeepCollectionEquality().equals(other._empList, _empList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityIndex, isLoading, err,
      const DeepCollectionEquality().hash(_empList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements EmployeeScreenState {
  const factory _Initial(
      {required final int cityIndex,
      required final bool isLoading,
      required final String? err,
      required final List<EmployeeEntity> empList}) = _$InitialImpl;

  @override
  int get cityIndex;
  @override
  bool get isLoading;
  @override
  String? get err;
  @override
  List<EmployeeEntity> get empList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
