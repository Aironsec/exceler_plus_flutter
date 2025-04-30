// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreferencesEntity _$PreferencesEntityFromJson(Map<String, dynamic> json) {
  return _PreferencesEntity.fromJson(json);
}

/// @nodoc
mixin _$PreferencesEntity {
  MainMenuModel get currentTabMain => throw _privateConstructorUsedError;
  Map<MainMenuModel, RequestEntity> get request =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesEntityCopyWith<PreferencesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesEntityCopyWith<$Res> {
  factory $PreferencesEntityCopyWith(
          PreferencesEntity value, $Res Function(PreferencesEntity) then) =
      _$PreferencesEntityCopyWithImpl<$Res, PreferencesEntity>;
  @useResult
  $Res call(
      {MainMenuModel currentTabMain,
      Map<MainMenuModel, RequestEntity> request});
}

/// @nodoc
class _$PreferencesEntityCopyWithImpl<$Res, $Val extends PreferencesEntity>
    implements $PreferencesEntityCopyWith<$Res> {
  _$PreferencesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTabMain = null,
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      currentTabMain: null == currentTabMain
          ? _value.currentTabMain
          : currentTabMain // ignore: cast_nullable_to_non_nullable
              as MainMenuModel,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as Map<MainMenuModel, RequestEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferencesEntityImplCopyWith<$Res>
    implements $PreferencesEntityCopyWith<$Res> {
  factory _$$PreferencesEntityImplCopyWith(_$PreferencesEntityImpl value,
          $Res Function(_$PreferencesEntityImpl) then) =
      __$$PreferencesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MainMenuModel currentTabMain,
      Map<MainMenuModel, RequestEntity> request});
}

/// @nodoc
class __$$PreferencesEntityImplCopyWithImpl<$Res>
    extends _$PreferencesEntityCopyWithImpl<$Res, _$PreferencesEntityImpl>
    implements _$$PreferencesEntityImplCopyWith<$Res> {
  __$$PreferencesEntityImplCopyWithImpl(_$PreferencesEntityImpl _value,
      $Res Function(_$PreferencesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentTabMain = null,
    Object? request = null,
  }) {
    return _then(_$PreferencesEntityImpl(
      null == currentTabMain
          ? _value.currentTabMain
          : currentTabMain // ignore: cast_nullable_to_non_nullable
              as MainMenuModel,
      null == request
          ? _value._request
          : request // ignore: cast_nullable_to_non_nullable
              as Map<MainMenuModel, RequestEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreferencesEntityImpl implements _PreferencesEntity {
  const _$PreferencesEntityImpl(
      [this.currentTabMain = MainMenuModel.deadlines,
      final Map<MainMenuModel, RequestEntity> request = const {
        MainMenuModel.deadlines: RequestEntity()
      }])
      : _request = request;

  factory _$PreferencesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferencesEntityImplFromJson(json);

  @override
  @JsonKey()
  final MainMenuModel currentTabMain;
  final Map<MainMenuModel, RequestEntity> _request;
  @override
  @JsonKey()
  Map<MainMenuModel, RequestEntity> get request {
    if (_request is EqualUnmodifiableMapView) return _request;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_request);
  }

  @override
  String toString() {
    return 'PreferencesEntity(currentTabMain: $currentTabMain, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferencesEntityImpl &&
            (identical(other.currentTabMain, currentTabMain) ||
                other.currentTabMain == currentTabMain) &&
            const DeepCollectionEquality().equals(other._request, _request));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentTabMain,
      const DeepCollectionEquality().hash(_request));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferencesEntityImplCopyWith<_$PreferencesEntityImpl> get copyWith =>
      __$$PreferencesEntityImplCopyWithImpl<_$PreferencesEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferencesEntityImplToJson(
      this,
    );
  }
}

abstract class _PreferencesEntity implements PreferencesEntity {
  const factory _PreferencesEntity(
          [final MainMenuModel currentTabMain,
          final Map<MainMenuModel, RequestEntity> request]) =
      _$PreferencesEntityImpl;

  factory _PreferencesEntity.fromJson(Map<String, dynamic> json) =
      _$PreferencesEntityImpl.fromJson;

  @override
  MainMenuModel get currentTabMain;
  @override
  Map<MainMenuModel, RequestEntity> get request;
  @override
  @JsonKey(ignore: true)
  _$$PreferencesEntityImplCopyWith<_$PreferencesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
