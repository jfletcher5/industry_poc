// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future addToList(
  String? itemDescription,
  List<dynamic>? taskListJSONList,
) async {
  // Add itemDescription to the end of the list taskListJSONList
  if (itemDescription != null && taskListJSONList != null) {
    Map<String, dynamic> newItem = {
      "taskDescription": itemDescription,
      "completed": false
    };
    taskListJSONList.add(newItem);
  }
}
