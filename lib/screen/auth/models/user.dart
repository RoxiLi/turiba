class UserModel {
  UserModel({
    required this.name,
  });

  final String name;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
