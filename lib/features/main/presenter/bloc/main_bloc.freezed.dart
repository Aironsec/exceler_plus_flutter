// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MainMenuModel menuItem) getData,
    required TResult Function(String nameFile) loadFileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MainMenuModel menuItem)? getData,
    TResult? Function(String nameFile)? loadFileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MainMenuModel menuItem)? getData,
    TResult Function(String nameFile)? loadFileData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MainEventGetData value) getData,
    required TResult Function(_MainEventRequestData value) loadFileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MainEventGetData value)? getData,
    TResult? Function(_MainEventRequestData value)? loadFileData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MainEventGetData value)? getData,
    TResult Function(_MainEventRequestData value)? loadFileData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MainEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MainMenuModel menuItem) getData,
    required TResult Function(String nameFile) loadFileData,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MainMenuModel menuItem)? getData,
    TResult? Function(String nameFile)? loadFileData,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MainMenuModel menuItem)? getData,
    TResult Function(String nameFile)? loadFileData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MainEventGetData value) getData,
    required TResult Function(_MainEventRequestData value) loadFileData,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MainEventGetData value)? getData,
    TResult? Function(_MainEventRequestData value)? loadFileData,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MainEventGetData value)? getData,
    TResult Function(_MainEventRequestData value)? loadFileData,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$MainEventGetDataImplCopyWith<$Res> {
  factory _$$MainEventGetDataImplCopyWith(_$MainEventGetDataImpl value,
          $Res Function(_$MainEventGetDataImpl) then) =
      __$$MainEventGetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MainMenuModel menuItem});
}

/// @nodoc
class __$$MainEventGetDataImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventGetDataImpl>
    implements _$$MainEventGetDataImplCopyWith<$Res> {
  __$$MainEventGetDataImplCopyWithImpl(_$MainEventGetDataImpl _value,
      $Res Function(_$MainEventGetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItem = null,
  }) {
    return _then(_$MainEventGetDataImpl(
      null == menuItem
          ? _value.menuItem
          : menuItem // ignore: cast_nullable_to_non_nullable
              as MainMenuModel,
    ));
  }
}

/// @nodoc

class _$MainEventGetDataImpl implements _MainEventGetData {
  const _$MainEventGetDataImpl(this.menuItem);

  @override
  final MainMenuModel menuItem;

  @override
  String toString() {
    return 'MainEvent.getData(menuItem: $menuItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventGetDataImpl &&
            (identical(other.menuItem, menuItem) ||
                other.menuItem == menuItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, menuItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventGetDataImplCopyWith<_$MainEventGetDataImpl> get copyWith =>
      __$$MainEventGetDataImplCopyWithImpl<_$MainEventGetDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MainMenuModel menuItem) getData,
    required TResult Function(String nameFile) loadFileData,
  }) {
    return getData(menuItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MainMenuModel menuItem)? getData,
    TResult? Function(String nameFile)? loadFileData,
  }) {
    return getData?.call(menuItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MainMenuModel menuItem)? getData,
    TResult Function(String nameFile)? loadFileData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(menuItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MainEventGetData value) getData,
    required TResult Function(_MainEventRequestData value) loadFileData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MainEventGetData value)? getData,
    TResult? Function(_MainEventRequestData value)? loadFileData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MainEventGetData value)? getData,
    TResult Function(_MainEventRequestData value)? loadFileData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _MainEventGetData implements MainEvent {
  const factory _MainEventGetData(final MainMenuModel menuItem) =
      _$MainEventGetDataImpl;

  MainMenuModel get menuItem;
  @JsonKey(ignore: true)
  _$$MainEventGetDataImplCopyWith<_$MainEventGetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainEventRequestDataImplCopyWith<$Res> {
  factory _$$MainEventRequestDataImplCopyWith(_$MainEventRequestDataImpl value,
          $Res Function(_$MainEventRequestDataImpl) then) =
      __$$MainEventRequestDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameFile});
}

/// @nodoc
class __$$MainEventRequestDataImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventRequestDataImpl>
    implements _$$MainEventRequestDataImplCopyWith<$Res> {
  __$$MainEventRequestDataImplCopyWithImpl(_$MainEventRequestDataImpl _value,
      $Res Function(_$MainEventRequestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameFile = null,
  }) {
    return _then(_$MainEventRequestDataImpl(
      null == nameFile
          ? _value.nameFile
          : nameFile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainEventRequestDataImpl implements _MainEventRequestData {
  const _$MainEventRequestDataImpl(this.nameFile);

  @override
  final String nameFile;

  @override
  String toString() {
    return 'MainEvent.loadFileData(nameFile: $nameFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventRequestDataImpl &&
            (identical(other.nameFile, nameFile) ||
                other.nameFile == nameFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventRequestDataImplCopyWith<_$MainEventRequestDataImpl>
      get copyWith =>
          __$$MainEventRequestDataImplCopyWithImpl<_$MainEventRequestDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MainMenuModel menuItem) getData,
    required TResult Function(String nameFile) loadFileData,
  }) {
    return loadFileData(nameFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(MainMenuModel menuItem)? getData,
    TResult? Function(String nameFile)? loadFileData,
  }) {
    return loadFileData?.call(nameFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MainMenuModel menuItem)? getData,
    TResult Function(String nameFile)? loadFileData,
    required TResult orElse(),
  }) {
    if (loadFileData != null) {
      return loadFileData(nameFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_MainEventGetData value) getData,
    required TResult Function(_MainEventRequestData value) loadFileData,
  }) {
    return loadFileData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_MainEventGetData value)? getData,
    TResult? Function(_MainEventRequestData value)? loadFileData,
  }) {
    return loadFileData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_MainEventGetData value)? getData,
    TResult Function(_MainEventRequestData value)? loadFileData,
    required TResult orElse(),
  }) {
    if (loadFileData != null) {
      return loadFileData(this);
    }
    return orElse();
  }
}

abstract class _MainEventRequestData implements MainEvent {
  const factory _MainEventRequestData(final String nameFile) =
      _$MainEventRequestDataImpl;

  String get nameFile;
  @JsonKey(ignore: true)
  _$$MainEventRequestDataImplCopyWith<_$MainEventRequestDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<int, List<DeadlinesData>> data) deadlinesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<int, List<DeadlinesData>> data)? deadlinesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<int, List<DeadlinesData>> data)? deadlinesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeadLinesData value) deadlinesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeadLinesData value)? deadlinesData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeadLinesData value)? deadlinesData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MainState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<int, List<DeadlinesData>> data) deadlinesData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<int, List<DeadlinesData>> data)? deadlinesData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<int, List<DeadlinesData>> data)? deadlinesData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeadLinesData value) deadlinesData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeadLinesData value)? deadlinesData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeadLinesData value)? deadlinesData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeadLinesDataImplCopyWith<$Res> {
  factory _$$DeadLinesDataImplCopyWith(
          _$DeadLinesDataImpl value, $Res Function(_$DeadLinesDataImpl) then) =
      __$$DeadLinesDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<int, List<DeadlinesData>> data});
}

/// @nodoc
class __$$DeadLinesDataImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$DeadLinesDataImpl>
    implements _$$DeadLinesDataImplCopyWith<$Res> {
  __$$DeadLinesDataImplCopyWithImpl(
      _$DeadLinesDataImpl _value, $Res Function(_$DeadLinesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DeadLinesDataImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<int, List<DeadlinesData>>,
    ));
  }
}

/// @nodoc

class _$DeadLinesDataImpl implements _DeadLinesData {
  const _$DeadLinesDataImpl(final Map<int, List<DeadlinesData>> data)
      : _data = data;

  final Map<int, List<DeadlinesData>> _data;
  @override
  Map<int, List<DeadlinesData>> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'MainState.deadlinesData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeadLinesDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeadLinesDataImplCopyWith<_$DeadLinesDataImpl> get copyWith =>
      __$$DeadLinesDataImplCopyWithImpl<_$DeadLinesDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Map<int, List<DeadlinesData>> data) deadlinesData,
  }) {
    return deadlinesData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Map<int, List<DeadlinesData>> data)? deadlinesData,
  }) {
    return deadlinesData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Map<int, List<DeadlinesData>> data)? deadlinesData,
    required TResult orElse(),
  }) {
    if (deadlinesData != null) {
      return deadlinesData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_DeadLinesData value) deadlinesData,
  }) {
    return deadlinesData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_DeadLinesData value)? deadlinesData,
  }) {
    return deadlinesData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_DeadLinesData value)? deadlinesData,
    required TResult orElse(),
  }) {
    if (deadlinesData != null) {
      return deadlinesData(this);
    }
    return orElse();
  }
}

abstract class _DeadLinesData implements MainState {
  const factory _DeadLinesData(final Map<int, List<DeadlinesData>> data) =
      _$DeadLinesDataImpl;

  Map<int, List<DeadlinesData>> get data;
  @JsonKey(ignore: true)
  _$$DeadLinesDataImplCopyWith<_$DeadLinesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
