import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_flutter/hive_flutter.dart';

extension DocumentReferenceX on DocumentReference {
  CollectionReference get usersCollection => collection('users');
  CollectionReference get placesCollection => collection('places');
  CollectionReference get likedPlacesCollection => collection('likedPlaces');
}

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final box = await Hive.openBox('auth');
    final userId = box.get("userId");
    return FirebaseFirestore.instance
        .collection('users')
        .doc("Ppo8hiqvFaPv2z01CQDu3onyYEB2");
  }

  CollectionReference placeDocument() {
    return FirebaseFirestore.instance.collection('places');
  }
}
