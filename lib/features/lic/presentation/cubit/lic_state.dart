part of 'lic_cubit.dart';

@freezed
class LicState with _$LicState {
  const factory LicState.notLic() = _NotLic;

  const factory LicState.lic(LicEntity lic) = _Lic;

  const factory LicState.error(String error) = _Error;

  factory LicState.fromJson(Map<String, dynamic> json) =>
      _$LicStateFromJson(json);
}
