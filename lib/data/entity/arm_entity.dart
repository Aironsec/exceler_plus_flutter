class ArmEntity {
  int? nn;
  String armName;
  DateTime date;
  String certificate;

  ArmEntity({
    required this.armName,
    required this.date,
    required this.certificate,
  });

  static const countCol = 4;
  static const armNameCol = 1;
  static const dateCol = 2;
  static const certCol = 3;
}
