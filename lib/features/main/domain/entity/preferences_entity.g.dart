// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferencesEntityImpl _$$PreferencesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferencesEntityImpl(
      $enumDecodeNullable(_$MainMenuModelEnumMap, json['currentTabMain']) ??
          MainMenuModel.deadlines,
      (json['request'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$MainMenuModelEnumMap, k),
                RequestEntity.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {MainMenuModel.deadlines: RequestEntity()},
    );

Map<String, dynamic> _$$PreferencesEntityImplToJson(
        _$PreferencesEntityImpl instance) =>
    <String, dynamic>{
      'currentTabMain': _$MainMenuModelEnumMap[instance.currentTabMain]!,
      'request': instance.request
          .map((k, e) => MapEntry(_$MainMenuModelEnumMap[k]!, e)),
    };

const _$MainMenuModelEnumMap = {
  MainMenuModel.deadlines: 'deadlines',
  MainMenuModel.specification: 'specification',
  MainMenuModel.planeWorks: 'planeWorks',
  MainMenuModel.progressWorks: 'progressWorks',
  MainMenuModel.bid: 'bid',
  MainMenuModel.distributionDepartaments: 'distributionDepartaments',
  MainMenuModel.brit: 'brit',
};
