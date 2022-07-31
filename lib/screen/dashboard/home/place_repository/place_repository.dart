import 'package:turiba/screen/dashboard/home/model/place.dart';
import 'package:turiba/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:turiba/screen/dashboard/home/place_repository/i_place_repository.dart';

class PlaceRespository extends IPlaceRepository {
  @override
  Future<Either<Failure, List<Place>>> getFavoritesPlaces() {
    // TODO: implement getFavoritesPlaces
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Place>>> getPlaces() {
    // TODO: implement getPlaces
    throw UnimplementedError();
  }
}
