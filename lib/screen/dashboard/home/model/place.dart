import 'package:cloud_firestore/cloud_firestore.dart';

class Place {
  Place({
    required this.name,
    required this.stars,
    required this.likes,
    required this.description,
    required this.topics,
    required this.image,
    required this.id,
    required this.geoPoint,
  });

  final String id;
  final String name;
  final int stars;
  final int likes;
  final String description;
  final List<String> topics;
  final String image;
  final GeoPoint geoPoint;

  factory Place.fromJson(Map<String, dynamic> json, String id) => Place(
        id: id,
        name: json["name"],
        stars: json["stars"],
        likes: json["likes"],
        description: json["description"],
        topics: List.from(json["topics"]),
        image: json["image"],
        geoPoint: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "stars": stars,
        "likes": likes,
        "description": description,
        "image": image,
        "topics": List<dynamic>.from(topics.map((x) => x)),
      };
}
