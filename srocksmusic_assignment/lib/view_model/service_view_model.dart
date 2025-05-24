import 'package:flutter/material.dart';
import 'package:srocksmusic_assignment/model/service_repository.dart';
import 'package:srocksmusic_assignment/model/service_model.dart';

class ServiceViewModel extends ChangeNotifier {
  final ServiceRepository _repository;
  List<ServiceModel> services = [];
  bool isLoading = true;

  ServiceViewModel(this._repository);

  Future<void> loadServices() async {
    isLoading = true;
    notifyListeners();

    services = await _repository.fetchServices();
    isLoading = false;
    notifyListeners();
  }
}