class Place {
  Place({
    required this.name,
    required this.stars,
    required this.likes,
    required this.description,
    required this.topics,
    required this.image,
  });

  final String name;
  final int stars;
  final int likes;
  final String description;
  final List<String> topics;
  final String image;

  factory Place.fromJson(Map<String, dynamic> json) => Place(
        name: json["name"],
        stars: json["stars"],
        likes: json["likes"],
        description: json["description"],
        topics: List.from(json["topics"]),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "stars": stars,
        "likes": likes,
        "description": description,
      };
}
