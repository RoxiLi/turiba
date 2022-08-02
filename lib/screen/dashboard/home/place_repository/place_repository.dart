import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:turiba/screen/dashboard/home/model/place.dart';
import 'package:turiba/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'i_place_repository.dart';
import '../../../../core/firebase_helper.dart';

@LazySingleton(as: IPlaceRepository)
class PlaceRespository extends IPlaceRepository {
  final FirebaseFirestore _firebaseFirestore;

  PlaceRespository(this._firebaseFirestore);

  @override
  Future<Either<Failure, List<Place>>> getPlaces() async {
    try {
      final placeReference = _firebaseFirestore.placeDocument();
      final snapshot = await placeReference.get();
      return right(
        snapshot.docs
            .map((doc) =>
                Place.fromJson(doc.data() as Map<String, dynamic>, doc.id))
            .toList(),
      );
    } catch (e) {
      return left(const Failure.unexpected());
    }
  }

  @override
  Future<Either<Failure, List<Place>>> getFavoritesPlaces() async {
    try {
      final placeReference = _firebaseFirestore.placeDocument();
      final query = placeReference.orderBy("likes", descending: true).limit(10);
      final snapshot = await query.get();
      return right(
        snapshot.docs
            .map((doc) =>
                Place.fromJson(doc.data() as Map<String, dynamic>, doc.id))
            .toList(),
      );
    } catch (e) {
      return left(const Failure.unexpected());
    }
  }

  @override
  Future<Either<Failure, List<Place>>> getLikedPlaces() async {
    try {
      final userRef = await _firebaseFirestore.userDocument();
      final likedPlaceReference = userRef.likedPlacesCollection;
      final snapshot = await likedPlaceReference.get();
      return right(
        snapshot.docs
            .map((doc) =>
                Place.fromJson(doc.data() as Map<String, dynamic>, doc.id))
            .toList(),
      );
    } catch (e) {
      return left(const Failure.unexpected());
    }
  }

  @override
  Future<Either<Failure, Unit>> likePlace({
    required Place place,
  }) async {
    try {
      final newLikes = place.likes + 1;
      final placeRef = _firebaseFirestore.placeDocument().doc(place.id);
      final userRef = await _firebaseFirestore.userDocument();
      final likedPlacesDoc = userRef.likedPlacesCollection.doc(place.id);
      final batch = _firebaseFirestore.batch();
      batch.update(placeRef, {"likes": newLikes});
      batch.set(likedPlacesDoc, place.toJson());
      batch.commit();
      return right(unit);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }

  @override
  Future<Either<Failure, Unit>> unLikePlace({required Place place}) async {
    try {
      final newLikes = place.likes - 1;
      final placeRef = _firebaseFirestore.placeDocument().doc(place.id);
      final userRef = await _firebaseFirestore.userDocument();
      final likedPlacesDoc = userRef.likedPlacesCollection.doc(place.id);
      final batch = _firebaseFirestore.batch();
      batch.update(placeRef, {"likes": newLikes});
      batch.delete(likedPlacesDoc);
      batch.commit();
      return right(unit);
    } catch (e) {
      return left(const Failure.serverError());
    }
  }
}
