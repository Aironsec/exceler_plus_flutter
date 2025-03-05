// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lic_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LicEntity _$LicEntityFromJson(Map<String, dynamic> json) {
  return _LicEntity.fromJson(json);
}

/// @nodoc
mixin _$LicEntity {
  String get idMachine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicEntityCopyWith<LicEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicEntityCopyWith<$Res> {
  factory $LicEntityCopyWith(LicEntity value, $Res Function(LicEntity) then) =
      _$LicEntityCopyWithImpl<$Res, LicEntity>;
  @useResult
  $Res call({String idMachine});
}

/// @nodoc
class _$LicEntityCopyWithImpl<$Res, $Val extends LicEntity>
    implements $LicEntityCopyWith<$Res> {
  _$LicEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMachine = null,
  }) {
    return _then(_value.copyWith(
      idMachine: null == idMachine
          ? _value.idMachine
          : idMachine // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LicEntityImplCopyWith<$Res>
    implements $LicEntityCopyWith<$Res> {
  factory _$$LicEntityImplCopyWith(
          _$LicEntityImpl value, $Res Function(_$LicEntityImpl) then) =
      __$$LicEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String idMachine});
}

/// @nodoc
class __$$LicEntityImplCopyWithImpl<$Res>
    extends _$LicEntityCopyWithImpl<$Res, _$LicEntityImpl>
    implements _$$LicEntityImplCopyWith<$Res> {
  __$$LicEntityImplCopyWithImpl(
      _$LicEntityImpl _value, $Res Function(_$LicEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMachine = null,
  }) {
    return _then(_$LicEntityImpl(
      idMachine: null == idMachine
          ? _value.idMachine
          : idMachine // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LicEntityImpl implements _LicEntity {
  const _$LicEntityImpl({required this.idMachine});

  factory _$LicEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LicEntityImplFromJson(json);

  @override
  final String idMachine;

  @override
  String toString() {
    return 'LicEntity(idMachine: $idMachine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicEntityImpl &&
            (identical(other.idMachine, idMachine) ||
                other.idMachine == idMachine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, idMachine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LicEntityImplCopyWith<_$LicEntityImpl> get copyWith =>
      __$$LicEntityImplCopyWithImpl<_$LicEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LicEntityImplToJson(
      this,
    );
  }
}

abstract class _LicEntity implements LicEntity {
  const factory _LicEntity({required final String idMachine}) = _$LicEntityImpl;

  factory _LicEntity.fromJson(Map<String, dynamic> json) =
      _$LicEntityImpl.fromJson;

  @override
  String get idMachine;
  @override
  @JsonKey(ignore: true)
  _$$LicEntityImplCopyWith<_$LicEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
