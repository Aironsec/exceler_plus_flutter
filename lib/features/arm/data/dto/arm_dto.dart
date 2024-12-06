class ArmDto {
  int? nn;
  String? armName;
  DateTime? date;
  String? certificate;
  String? rows;

  ArmDto({
    this.nn,
    this.armName,
    this.date,
    this.certificate,
    this.rows,
  });

  static const armNameCol = 1;
  static const dateCol = 2;
  static const certCol = 3;
}
