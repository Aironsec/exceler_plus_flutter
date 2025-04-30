// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestEntityImpl _$$RequestEntityImplFromJson(Map<String, dynamic> json) =>
    _$RequestEntityImpl(
      json['fileNameRequest'] as String? ?? '',
      json['date'] as String? ?? '',
      json['active'] as bool? ?? false,
      json['responsible'] as String? ?? '',
    );

Map<String, dynamic> _$$RequestEntityImplToJson(_$RequestEntityImpl instance) =>
    <String, dynamic>{
      'fileNameRequest': instance.fileNameRequest,
      'date': instance.date,
      'active': instance.active,
      'responsible': instance.responsible,
    };
