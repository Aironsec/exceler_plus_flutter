enum TypeFile {
  arms('arms.csv'),
  personals('personals.csv');

  const TypeFile(this.typeName);
  final String typeName;
}
