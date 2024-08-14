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
}
