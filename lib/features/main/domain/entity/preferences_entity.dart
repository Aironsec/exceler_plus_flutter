import 'package:exceler_plus_flutter/features/main/domain/entity/request_entity.dart';
import 'package:exceler_plus_flutter/features/main/presenter/view_model/main_menu_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_entity.g.dart';
part 'preferences_entity.freezed.dart';

@freezed
abstract class PreferencesEntity with _$PreferencesEntity {
  const factory PreferencesEntity([
    @Default(MainMenuModel.deadlines) MainMenuModel currentTabMain,
    @Default({MainMenuModel.deadlines : RequestEntity()})
    Map<MainMenuModel, RequestEntity> request,
  ]) = _PreferencesEntity;

  factory PreferencesEntity.fromJson(Map<String, dynamic> json) =>
      _$PreferencesEntityFromJson(json);
}
