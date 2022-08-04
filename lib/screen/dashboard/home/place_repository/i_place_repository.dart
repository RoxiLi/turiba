import 'package:dartz/dartz.dart';
import 'package:turiba/core/failure.dart';
import 'package:turiba/screen/dashboard/home/model/place.dart';

abstract class IPlaceRepository {
  Future<Either<Failure, List<Place>>> getPlaces();
  Future<Either<Failure, List<Place>>> getLikedPlaces();
  Future<Either<Failure, List<Place>>> getFavoritesPlaces();
  Future<Either<Failure, Unit>> likePlace({
    required Place place,
  });
  Future<Either<Failure, Unit>> unLikePlace({
    required Place place,
  });
  Future<Either<Failure, List<Place>>> search(
      {required String name, required List<String> topics});

  Future<Either<Failure, List<Place>>> getRecomendations();
}
