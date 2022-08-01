import 'package:dartz/dartz.dart';
import 'package:turiba/core/failure.dart';
import 'package:turiba/screen/dashboard/home/model/place.dart';

abstract class IPlaceRepository {
  Future<Either<Failure, List<Place>>> getPlaces();
  Future<Either<Failure, List<Place>>> getLikedPlaces();
  Future<Either<Failure, List<Place>>> getFavoritesPlaces();
}
