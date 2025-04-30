import 'package:freezed_annotation/freezed_annotation.dart';

enum MainMenuModel {
  @JsonValue("deadlines") deadlines('Сроки аттестации'),
  @JsonValue("specification") specification('Спецификация'),
  @JsonValue("planeWorks") planeWorks('План работ'),
  @JsonValue("progressWorks") progressWorks('Прогресс работ'),
  @JsonValue("bid") bid('Заявки'),
  @JsonValue("distributionDepartaments") distributionDepartaments('Распределение'),
  @JsonValue("brit") brit('БРИТ');

  final String title;
  const MainMenuModel(this.title);
}
