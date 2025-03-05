// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lic_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LicState _$LicStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notLic':
      return _NotLic.fromJson(json);
    case 'lic':
      return _Lic.fromJson(json);
    case 'error':
      return _Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LicState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LicState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLic,
    required TResult Function(LicEntity lic) lic,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLic,
    TResult? Function(LicEntity lic)? lic,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLic,
    TResult Function(LicEntity lic)? lic,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLic value) notLic,
    required TResult Function(_Lic value) lic,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLic value)? notLic,
    TResult? Function(_Lic value)? lic,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLic value)? notLic,
    TResult Function(_Lic value)? lic,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicStateCopyWith<$Res> {
  factory $LicStateCopyWith(LicState value, $Res Function(LicState) then) =
      _$LicStateCopyWithImpl<$Res, LicState>;
}

/// @nodoc
class _$LicStateCopyWithImpl<$Res, $Val extends LicState>
    implements $LicStateCopyWith<$Res> {
  _$LicStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotLicImplCopyWith<$Res> {
  factory _$$NotLicImplCopyWith(
          _$NotLicImpl value, $Res Function(_$NotLicImpl) then) =
      __$$NotLicImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLicImplCopyWithImpl<$Res>
    extends _$LicStateCopyWithImpl<$Res, _$NotLicImpl>
    implements _$$NotLicImplCopyWith<$Res> {
  __$$NotLicImplCopyWithImpl(
      _$NotLicImpl _value, $Res Function(_$NotLicImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NotLicImpl implements _NotLic {
  const _$NotLicImpl({final String? $type}) : $type = $type ?? 'notLic';

  factory _$NotLicImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotLicImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LicState.notLic()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLicImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLic,
    required TResult Function(LicEntity lic) lic,
    required TResult Function(String error) error,
  }) {
    return notLic();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLic,
    TResult? Function(LicEntity lic)? lic,
    TResult? Function(String error)? error,
  }) {
    return notLic?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLic,
    TResult Function(LicEntity lic)? lic,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (notLic != null) {
      return notLic();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLic value) notLic,
    required TResult Function(_Lic value) lic,
    required TResult Function(_Error value) error,
  }) {
    return notLic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLic value)? notLic,
    TResult? Function(_Lic value)? lic,
    TResult? Function(_Error value)? error,
  }) {
    return notLic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLic value)? notLic,
    TResult Function(_Lic value)? lic,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (notLic != null) {
      return notLic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotLicImplToJson(
      this,
    );
  }
}

abstract class _NotLic implements LicState {
  const factory _NotLic() = _$NotLicImpl;

  factory _NotLic.fromJson(Map<String, dynamic> json) = _$NotLicImpl.fromJson;
}

/// @nodoc
abstract class _$$LicImplCopyWith<$Res> {
  factory _$$LicImplCopyWith(_$LicImpl value, $Res Function(_$LicImpl) then) =
      __$$LicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LicEntity lic});

  $LicEntityCopyWith<$Res> get lic;
}

/// @nodoc
class __$$LicImplCopyWithImpl<$Res>
    extends _$LicStateCopyWithImpl<$Res, _$LicImpl>
    implements _$$LicImplCopyWith<$Res> {
  __$$LicImplCopyWithImpl(_$LicImpl _value, $Res Function(_$LicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lic = null,
  }) {
    return _then(_$LicImpl(
      null == lic
          ? _value.lic
          : lic // ignore: cast_nullable_to_non_nullable
              as LicEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LicEntityCopyWith<$Res> get lic {
    return $LicEntityCopyWith<$Res>(_value.lic, (value) {
      return _then(_value.copyWith(lic: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$LicImpl implements _Lic {
  const _$LicImpl(this.lic, {final String? $type}) : $type = $type ?? 'lic';

  factory _$LicImpl.fromJson(Map<String, dynamic> json) =>
      _$$LicImplFromJson(json);

  @override
  final LicEntity lic;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LicState.lic(lic: $lic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicImpl &&
            (identical(other.lic, lic) || other.lic == lic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LicImplCopyWith<_$LicImpl> get copyWith =>
      __$$LicImplCopyWithImpl<_$LicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLic,
    required TResult Function(LicEntity lic) lic,
    required TResult Function(String error) error,
  }) {
    return lic(this.lic);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLic,
    TResult? Function(LicEntity lic)? lic,
    TResult? Function(String error)? error,
  }) {
    return lic?.call(this.lic);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLic,
    TResult Function(LicEntity lic)? lic,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (lic != null) {
      return lic(this.lic);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLic value) notLic,
    required TResult Function(_Lic value) lic,
    required TResult Function(_Error value) error,
  }) {
    return lic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLic value)? notLic,
    TResult? Function(_Lic value)? lic,
    TResult? Function(_Error value)? error,
  }) {
    return lic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLic value)? notLic,
    TResult Function(_Lic value)? lic,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (lic != null) {
      return lic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LicImplToJson(
      this,
    );
  }
}

abstract class _Lic implements LicState {
  const factory _Lic(final LicEntity lic) = _$LicImpl;

  factory _Lic.fromJson(Map<String, dynamic> json) = _$LicImpl.fromJson;

  LicEntity get lic;
  @JsonKey(ignore: true)
  _$$LicImplCopyWith<_$LicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LicStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorImplFromJson(json);

  @override
  final String error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'LicState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notLic,
    required TResult Function(LicEntity lic) lic,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notLic,
    TResult? Function(LicEntity lic)? lic,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notLic,
    TResult Function(LicEntity lic)? lic,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotLic value) notLic,
    required TResult Function(_Lic value) lic,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotLic value)? notLic,
    TResult? Function(_Lic value)? lic,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotLic value)? notLic,
    TResult Function(_Lic value)? lic,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorImplToJson(
      this,
    );
  }
}

abstract class _Error implements LicState {
  const factory _Error(final String error) = _$ErrorImpl;

  factory _Error.fromJson(Map<String, dynamic> json) = _$ErrorImpl.fromJson;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
