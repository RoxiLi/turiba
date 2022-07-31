import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive_flutter/hive_flutter.dart';

extension DocumentReferenceX on DocumentReference {
  CollectionReference get usersCollection => collection('users');
  CollectionReference get filtersCollection => collection('preparations');
  CollectionReference get measurementCollection => collection('measurements');
}

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final box = await Hive.openBox('auth');
    final userId = box.get("userId");
    return FirebaseFirestore.instance.collection('users').doc(userId);
  }
}
