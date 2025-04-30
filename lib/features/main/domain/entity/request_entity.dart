import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_entity.g.dart';
part 'request_entity.freezed.dart';

@freezed
abstract class RequestEntity with _$RequestEntity {
  const factory RequestEntity([
    @Default('') String fileNameRequest,
    @Default('') String date,
    @Default(false) bool active,
    @Default('') String responsible,
  ]) = _RequestEntity;

  factory RequestEntity.fromJson(Map<String, dynamic> json) =>
      _$RequestEntityFromJson(json);
}
