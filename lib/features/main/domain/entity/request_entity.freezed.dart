// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestEntity _$RequestEntityFromJson(Map<String, dynamic> json) {
  return _RequestEntity.fromJson(json);
}

/// @nodoc
mixin _$RequestEntity {
  String get fileNameRequest => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String get responsible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestEntityCopyWith<RequestEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestEntityCopyWith<$Res> {
  factory $RequestEntityCopyWith(
          RequestEntity value, $Res Function(RequestEntity) then) =
      _$RequestEntityCopyWithImpl<$Res, RequestEntity>;
  @useResult
  $Res call(
      {String fileNameRequest, String date, bool active, String responsible});
}

/// @nodoc
class _$RequestEntityCopyWithImpl<$Res, $Val extends RequestEntity>
    implements $RequestEntityCopyWith<$Res> {
  _$RequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileNameRequest = null,
    Object? date = null,
    Object? active = null,
    Object? responsible = null,
  }) {
    return _then(_value.copyWith(
      fileNameRequest: null == fileNameRequest
          ? _value.fileNameRequest
          : fileNameRequest // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      responsible: null == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestEntityImplCopyWith<$Res>
    implements $RequestEntityCopyWith<$Res> {
  factory _$$RequestEntityImplCopyWith(
          _$RequestEntityImpl value, $Res Function(_$RequestEntityImpl) then) =
      __$$RequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String fileNameRequest, String date, bool active, String responsible});
}

/// @nodoc
class __$$RequestEntityImplCopyWithImpl<$Res>
    extends _$RequestEntityCopyWithImpl<$Res, _$RequestEntityImpl>
    implements _$$RequestEntityImplCopyWith<$Res> {
  __$$RequestEntityImplCopyWithImpl(
      _$RequestEntityImpl _value, $Res Function(_$RequestEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileNameRequest = null,
    Object? date = null,
    Object? active = null,
    Object? responsible = null,
  }) {
    return _then(_$RequestEntityImpl(
      null == fileNameRequest
          ? _value.fileNameRequest
          : fileNameRequest // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      null == responsible
          ? _value.responsible
          : responsible // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestEntityImpl implements _RequestEntity {
  const _$RequestEntityImpl(
      [this.fileNameRequest = '',
      this.date = '',
      this.active = false,
      this.responsible = '']);

  factory _$RequestEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestEntityImplFromJson(json);

  @override
  @JsonKey()
  final String fileNameRequest;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final bool active;
  @override
  @JsonKey()
  final String responsible;

  @override
  String toString() {
    return 'RequestEntity(fileNameRequest: $fileNameRequest, date: $date, active: $active, responsible: $responsible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestEntityImpl &&
            (identical(other.fileNameRequest, fileNameRequest) ||
                other.fileNameRequest == fileNameRequest) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.responsible, responsible) ||
                other.responsible == responsible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileNameRequest, date, active, responsible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestEntityImplCopyWith<_$RequestEntityImpl> get copyWith =>
      __$$RequestEntityImplCopyWithImpl<_$RequestEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestEntityImplToJson(
      this,
    );
  }
}

abstract class _RequestEntity implements RequestEntity {
  const factory _RequestEntity(
      [final String fileNameRequest,
      final String date,
      final bool active,
      final String responsible]) = _$RequestEntityImpl;

  factory _RequestEntity.fromJson(Map<String, dynamic> json) =
      _$RequestEntityImpl.fromJson;

  @override
  String get fileNameRequest;
  @override
  String get date;
  @override
  bool get active;
  @override
  String get responsible;
  @override
  @JsonKey(ignore: true)
  _$$RequestEntityImplCopyWith<_$RequestEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
