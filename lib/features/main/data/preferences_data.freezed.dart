// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreferencesData _$PreferencesDataFromJson(Map<String, dynamic> json) {
  return _PreferencesData.fromJson(json);
}

/// @nodoc
mixin _$PreferencesData {
  int get currentIndexMainTab => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesDataCopyWith<PreferencesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesDataCopyWith<$Res> {
  factory $PreferencesDataCopyWith(
          PreferencesData value, $Res Function(PreferencesData) then) =
      _$PreferencesDataCopyWithImpl<$Res, PreferencesData>;
  @useResult
  $Res call({int currentIndexMainTab});
}

/// @nodoc
class _$PreferencesDataCopyWithImpl<$Res, $Val extends PreferencesData>
    implements $PreferencesDataCopyWith<$Res> {
  _$PreferencesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndexMainTab = null,
  }) {
    return _then(_value.copyWith(
      currentIndexMainTab: null == currentIndexMainTab
          ? _value.currentIndexMainTab
          : currentIndexMainTab // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesDataImplCopyWith<$Res>
    implements $PreferencesDataCopyWith<$Res> {
  factory _$$PreferencesDataImplCopyWith(_$PreferencesDataImpl value,
          $Res Function(_$PreferencesDataImpl) then) =
      __$$PreferencesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndexMainTab});
}

/// @nodoc
class __$$PreferencesDataImplCopyWithImpl<$Res>
    extends _$PreferencesDataCopyWithImpl<$Res, _$PreferencesDataImpl>
    implements _$$PreferencesDataImplCopyWith<$Res> {
  __$$PreferencesDataImplCopyWithImpl(
      _$PreferencesDataImpl _value, $Res Function(_$PreferencesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndexMainTab = null,
  }) {
    return _then(_$PreferencesDataImpl(
      currentIndexMainTab: null == currentIndexMainTab
          ? _value.currentIndexMainTab
          : currentIndexMainTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesDataImpl implements _PreferencesData {
  const _$PreferencesDataImpl({required this.currentIndexMainTab});

  factory _$PreferencesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesDataImplFromJson(json);

  @override
  final int currentIndexMainTab;

  @override
  String toString() {
    return 'PreferencesData(currentIndexMainTab: $currentIndexMainTab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesDataImpl &&
            (identical(other.currentIndexMainTab, currentIndexMainTab) ||
                other.currentIndexMainTab == currentIndexMainTab));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentIndexMainTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesDataImplCopyWith<_$PreferencesDataImpl> get copyWith =>
      __$$PreferencesDataImplCopyWithImpl<_$PreferencesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesDataImplToJson(
      this,
    );
  }
}

abstract class _PreferencesData implements PreferencesData {
  const factory _PreferencesData({required final int currentIndexMainTab}) =
      _$PreferencesDataImpl;

  factory _PreferencesData.fromJson(Map<String, dynamic> json) =
      _$PreferencesDataImpl.fromJson;

  @override
  int get currentIndexMainTab;
  @override
  @JsonKey(ignore: true)
  _$$PreferencesDataImplCopyWith<_$PreferencesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
