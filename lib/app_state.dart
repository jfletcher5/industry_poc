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

  bool _FirstValue = false;
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
}
