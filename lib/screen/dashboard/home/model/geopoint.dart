class GeoPoint {
  GeoPoint({
    required this.latitud,
    required this.longitud,
  });

  final int latitud;
  final int longitud;

  factory GeoPoint.fromJson(Map<String, dynamic> json) => GeoPoint(
        latitud: json["latitud"],
        longitud: json["longitud"],
      );

  Map<String, dynamic> toJson() => {
        "latitud": latitud,
        "longitud": longitud,
      };
}
