import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:srocksmusic_assignment/model/service_model.dart';

class ServiceRepository {
  final _firestore = FirebaseFirestore.instance;

  Future<List<ServiceModel>> fetchServices() async {
    final snapshot = await _firestore.collection('services').get();
    return snapshot.docs.map((doc) => ServiceModel.fromFirestore(doc)).toList();
  }
}