enum MainMenuModel {
  deadlines('Сроки аттестации'),
  specification('Спечификация'),
  planeWorks('План работ'),
  progressWorks('Прогресс работ'),
  bid('Заявки'),
  distributionDepartaments('Распределение');

  final String title;
  const MainMenuModel(this.title);
}
