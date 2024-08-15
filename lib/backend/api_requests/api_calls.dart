import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start chatservices Group Code

class ChatservicesGroup {
  static String getBaseUrl({
    String? conversationId = '',
    String? userID = '',
    String? tourID = '',
    int? speaker = -1,
    String? message = 'default message',
  }) =>
      'https://tour-guide-poc.uk.r.appspot.com/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'accept': 'application/json',
  };
  static GetConversationCall getConversationCall = GetConversationCall();
  static AddMessageCall addMessageCall = AddMessageCall();
}

class GetConversationCall {
  Future<ApiCallResponse> call({
    String? conversationId = '',
    String? userID = '',
    String? tourID = '',
    int? speaker = -1,
    String? message = 'default message',
  }) async {
    final baseUrl = ChatservicesGroup.getBaseUrl(
      conversationId: conversationId,
      userID: userID,
      tourID: tourID,
      speaker: speaker,
      message: message,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getConversation',
      apiUrl: '${baseUrl}services/get_chain_by_conversationID',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'conversation_id': conversationId,
        'speaker': speaker,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddMessageCall {
  Future<ApiCallResponse> call({
    String? conversationId = '',
    String? userID = '',
    String? tourID = '',
    int? speaker = -1,
    String? message = 'default message',
  }) async {
    final baseUrl = ChatservicesGroup.getBaseUrl(
      conversationId: conversationId,
      userID: userID,
      tourID: tourID,
      speaker: speaker,
      message: message,
    );

    final ffApiRequestBody = '''
{
  "conversation_id": "$conversationId",
  "conversation_name": "$conversationId",
  "tourID": "$tourID",
  "tourName": "",
  "userID": "$userID",
  "message": "$message"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addMessage',
      apiUrl: '${baseUrl}services/add_message_to_chain',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? messages(dynamic response) => (getJsonField(
        response,
        r'''$[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? roles(dynamic response) => (getJsonField(
        response,
        r'''$[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

/// End chatservices Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
