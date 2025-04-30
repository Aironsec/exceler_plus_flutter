import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_data.freezed.dart';
part 'preferences_data.g.dart';

@freezed
class PreferencesData with _$PreferencesData {
  const factory PreferencesData({
    required int currentIndexMainTab,
  }) = _PreferencesData;

  factory PreferencesData.fromJson(Map<String, dynamic> json) =>
      _$PreferencesDataFromJson(json);
}
