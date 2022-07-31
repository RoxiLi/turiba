class UserModel {
  UserModel({
    required this.name,
    required this.id,
  });

  final String name;
  final String id;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
      };
}
