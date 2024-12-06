final class ArmModel {
  final String? dirBD;
  final String? dirFiles;
  final List<String>? files;
  final List<ArmModel>? arms;
  const ArmModel({
    this.dirBD,
    this.dirFiles,
    this.files,
    this.arms,
  });

  ArmModel copyWith({
    String? dirBD,
    String? dirFiles,
    List<String>? files,
    List<ArmModel>? arms,
  }) {
    return ArmModel(
      dirBD: dirBD ?? this.dirBD,
      dirFiles: dirFiles ?? this.dirFiles,
      files: files ?? this.files,
      arms: arms ?? this.arms,
    );
  }
}
