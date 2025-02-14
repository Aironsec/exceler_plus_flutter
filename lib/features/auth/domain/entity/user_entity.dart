class UserEntity {
  final String login;
  final String password;

  const UserEntity({
    required this.login,
    required this.password,
  });

  Map<String, dynamic> toJason() => {"login": login, "password": password};

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(login: json["login"], password: json["password"]);
  }
}
