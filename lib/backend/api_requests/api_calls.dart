import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FlutterFlow + Airtable ApiFlow API Group Code

class FlutterFlowAirtableApiFlowAPIGroup {
  static String getBaseUrl() =>
      'https://gw.apiflow.online/api/a79f985d39eb43e198f967f03b6b15d8';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer MmE5ZDY0NDA4ZjNmZmUzNWZkZmQwNTVkNGQ4MTA1OGU6ZjM1YmQ4OWFlMjk3ZWNkYmNhMjQyYzNlMGUzYWM2ZjA=',
  };
  static ListPropertiesCall listPropertiesCall = ListPropertiesCall();
  static GetPropertiesByIDCall getPropertiesByIDCall = GetPropertiesByIDCall();
  static ListUsersCall listUsersCall = ListUsersCall();
  static GetUsersByIDCall getUsersByIDCall = GetUsersByIDCall();
}

class ListPropertiesCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Properties',
      apiUrl: '$baseUrl/table/tbluGPYRcikX0JVoT',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MmE5ZDY0NDA4ZjNmZmUzNWZkZmQwNTVkNGQ4MTA1OGU6ZjM1YmQ4OWFlMjk3ZWNkYmNhMjQyYzNlMGUzYWM2ZjA=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPropertiesByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Properties by ID',
      apiUrl: '$baseUrl/table/tbluGPYRcikX0JVoT/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MmE5ZDY0NDA4ZjNmZmUzNWZkZmQwNTVkNGQ4MTA1OGU6ZjM1YmQ4OWFlMjk3ZWNkYmNhMjQyYzNlMGUzYWM2ZjA=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ListUsersCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? sortField = '',
    String? sortDirection = '',
    String? offset = '',
    int? page,
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Users',
      apiUrl: '$baseUrl/table/tblVnnEUFFK57GD3H',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MmE5ZDY0NDA4ZjNmZmUzNWZkZmQwNTVkNGQ4MTA1OGU6ZjM1YmQ4OWFlMjk3ZWNkYmNhMjQyYzNlMGUzYWM2ZjA=',
      },
      params: {
        'filter': filter,
        'sort_field': sortField,
        'sort_direction': sortDirection,
        'offset': offset,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsersByIDCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = FlutterFlowAirtableApiFlowAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Users by ID',
      apiUrl: '$baseUrl/table/tblVnnEUFFK57GD3H/$id',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer MmE5ZDY0NDA4ZjNmZmUzNWZkZmQwNTVkNGQ4MTA1OGU6ZjM1YmQ4OWFlMjk3ZWNkYmNhMjQyYzNlMGUzYWM2ZjA=',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End FlutterFlow + Airtable ApiFlow API Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
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
    return json.encode(jsonVar);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
