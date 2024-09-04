import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _FirstValue = true;
  bool get FirstValue => _FirstValue;
  set FirstValue(bool value) {
    _FirstValue = value;
  }

  String _contentViewSelected = 'Dashboard';
  String get contentViewSelected => _contentViewSelected;
  set contentViewSelected(String value) {
    _contentViewSelected = value;
  }

  List<dynamic> _appConversationJSONList = [];
  List<dynamic> get appConversationJSONList => _appConversationJSONList;
  set appConversationJSONList(List<dynamic> value) {
    _appConversationJSONList = value;
  }

  void addToAppConversationJSONList(dynamic value) {
    appConversationJSONList.add(value);
  }

  void removeFromAppConversationJSONList(dynamic value) {
    appConversationJSONList.remove(value);
  }

  void removeAtIndexFromAppConversationJSONList(int index) {
    appConversationJSONList.removeAt(index);
  }

  void updateAppConversationJSONListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    appConversationJSONList[index] = updateFn(_appConversationJSONList[index]);
  }

  void insertAtIndexInAppConversationJSONList(int index, dynamic value) {
    appConversationJSONList.insert(index, value);
  }

  List<dynamic> _taskListJSONList = [];
  List<dynamic> get taskListJSONList => _taskListJSONList;
  set taskListJSONList(List<dynamic> value) {
    _taskListJSONList = value;
  }

  void addToTaskListJSONList(dynamic value) {
    taskListJSONList.add(value);
  }

  void removeFromTaskListJSONList(dynamic value) {
    taskListJSONList.remove(value);
  }

  void removeAtIndexFromTaskListJSONList(int index) {
    taskListJSONList.removeAt(index);
  }

  void updateTaskListJSONListAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    taskListJSONList[index] = updateFn(_taskListJSONList[index]);
  }

  void insertAtIndexInTaskListJSONList(int index, dynamic value) {
    taskListJSONList.insert(index, value);
  }

  String _appActiveCompany = '';
  String get appActiveCompany => _appActiveCompany;
  set appActiveCompany(String value) {
    _appActiveCompany = value;
  }

  List<String> _appUserPlants = [];
  List<String> get appUserPlants => _appUserPlants;
  set appUserPlants(List<String> value) {
    _appUserPlants = value;
  }

  void addToAppUserPlants(String value) {
    appUserPlants.add(value);
  }

  void removeFromAppUserPlants(String value) {
    appUserPlants.remove(value);
  }

  void removeAtIndexFromAppUserPlants(int index) {
    appUserPlants.removeAt(index);
  }

  void updateAppUserPlantsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    appUserPlants[index] = updateFn(_appUserPlants[index]);
  }

  void insertAtIndexInAppUserPlants(int index, String value) {
    appUserPlants.insert(index, value);
  }

  String _appActivePlant = '';
  String get appActivePlant => _appActivePlant;
  set appActivePlant(String value) {
    _appActivePlant = value;
  }

  bool _flagAlertPage = true;
  bool get flagAlertPage => _flagAlertPage;
  set flagAlertPage(bool value) {
    _flagAlertPage = value;
  }
}
