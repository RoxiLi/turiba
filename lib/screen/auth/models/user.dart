class UserModel {
  UserModel(
      {required this.name,
      required this.id,
      required this.email,
      required this.photo,
      required this.topics});

  final String name;
  final String id;
  final String email;
  final String photo;
  final List<String> topics;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        id: json["id"],
        email: '',
        photo: '',
        topics: [],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "topics": [],
      };
}
