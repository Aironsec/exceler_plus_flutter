// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lic_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotLicImpl _$$NotLicImplFromJson(Map<String, dynamic> json) => _$NotLicImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotLicImplToJson(_$NotLicImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LicImpl _$$LicImplFromJson(Map<String, dynamic> json) => _$LicImpl(
      LicEntity.fromJson(json['lic'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LicImplToJson(_$LicImpl instance) => <String, dynamic>{
      'lic': instance.lic,
      'runtimeType': instance.$type,
    };

_$ErrorImpl _$$ErrorImplFromJson(Map<String, dynamic> json) => _$ErrorImpl(
      json['error'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorImplToJson(_$ErrorImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
