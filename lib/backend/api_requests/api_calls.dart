import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Weather API Group Code

class WeatherAPIGroup {
  static String getBaseUrl() => 'http://api.weatherapi.com/v1';
  static Map<String, String> headers = {};
  static RealtimeWeatherCall realtimeWeatherCall = RealtimeWeatherCall();
}

class RealtimeWeatherCall {
  Future<ApiCallResponse> call({
    String? place = '',
  }) async {
    final baseUrl = WeatherAPIGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Realtime Weather',
      apiUrl: '${baseUrl}/current.json?q=${place}',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "a769e029386a4840adb190429252601",
        'q': true,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? locationname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.name''',
      ));
  String? locationregion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.region''',
      ));
  String? locationcountry(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.country''',
      ));
  String? locationlocaltime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.location.localtime''',
      ));
  double? currenttempc(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.current.temp_c''',
      ));
  String? currentconditiontext(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.current.condition.text''',
      ));
  int? currentconditioncode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.condition.code''',
      ));
  int? currentisday(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.is_day''',
      ));
  double? currentwindkph(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.current.wind_kph''',
      ));
  int? currentwinddegree(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.wind_degree''',
      ));
  String? currentwinddir(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.current.wind_dir''',
      ));
  double? currentfeelslikec(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.feelslike_c''',
      ));
  int? currentviskm(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.vis_km''',
      ));
  double? currentpressurein(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.pressure_in''',
      ));
  String? currentconditionicon(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.current.condition.icon''',
      ));
  int? currenthumidity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.humidity''',
      ));
}

/// End Weather API Group Code

/// Start OTP SMS Group Code

class OtpSmsGroup {
  static String getBaseUrl() => 'https://www.fast2sms.com/dev/';
  static Map<String, String> headers = {
    'authorization':
        'fd4RqZRv8Yi7AX7nyPyWX7aRlaN5UYGdU3rfNkbbCq7agiK1Ie7o5Snqmstn',
  };
  static SmsApiCall smsApiCall = SmsApiCall();
}

class SmsApiCall {
  Future<ApiCallResponse> call({
    String? variablesValues = '',
    String? numbers = '',
  }) async {
    final baseUrl = OtpSmsGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'SMS API',
      apiUrl: '${baseUrl}bulkV2',
      callType: ApiCallType.POST,
      headers: {
        'authorization':
            'fd4RqZRv8Yi7AX7nyPyWX7aRlaN5UYGdU3rfNkbbCq7agiK1Ie7o5Snqmstn',
      },
      params: {
        'variables_values': variablesValues,
        'route': "otp",
        'numbers': numbers,
        'flash': 0,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OTP SMS Group Code

class AnnaBuddyCall {
  static Future<ApiCallResponse> call({
    String? apiKey = '',
    dynamic messagesJson,
    String? systemMessage = '',
  }) async {
    final messages = _serializeJson(messagesJson);
    final ffApiRequestBody = '''
{
  "system_instruction": {
    "parts": {
      "text": "${systemMessage}"
    }
  },
  "contents": ${messages},
  "safetySettings": [
    {
      "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
      "threshold": "BLOCK_ONLY_HIGH"
    }
  ],
  "generationConfig": {
    "stopSequences": [
      "Title"
    ],
    "temperature": 1,
    "maxOutputTokens": 800,
    "topP": 0.8,
    "topK": 10
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Anna Buddy',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:streamGenerateContent?alt=sse&key=${apiKey}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: true,
      alwaysAllowBody: false,
    );
  }

  static String? segment(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.parts[:].text''',
      ));
  static String? role(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.candidates[:].content.role''',
      ));
}

class NearbyCall {
  static Future<ApiCallResponse> call({
    String? location = '',
  }) async {
    final ffApiRequestBody = '''
{
  "cellTowers": [
    {
      "cellId": 170402199,
      "locationAreaCode": "${escapeStringForJson(location)}",
      "mobileCountryCode": 310,
      "mobileNetworkCode": 410,
      "age": 0,
      "signalStrength": -60,
      "timingAdvance": 15
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Nearby',
      apiUrl: 'https://places.googleapis.com/v1/places:searchNearby',
      callType: ApiCallType.POST,
      headers: {},
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
}

class LocationCall {
  static Future<ApiCallResponse> call({
    String? latlng = '17.385044,78.486671',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'location',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/nearbysearch/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "AIzaSyDqy0YuK1lzqvwvNoDsfA60cLBghqdS9Lw",
        'radius': "2000",
        'type': "rastaurant",
        'location': latlng,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<double>? lat(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].geometry.location.lat''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? lng(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].geometry.location.lng''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class VertexAICall {
  static Future<ApiCallResponse> call({
    String? imageBase64 = '',
    String? apiKey = 'AIzaSyAkShGtRYgZuc53GA3ag5yh6Jy_NhSH6UQ',
    double? temperature = 0.7,
    int? maxOutputTokens = 100,
    int? topK = 64,
    double? topP = 0.95,
  }) async {
    final ffApiRequestBody = '''
{
  "contents": [
    {
      "parts": [
        {
          "inlineData": {
            "mimeType": "image/jpeg",
            "data": "${escapeStringForJson(imageBase64)}"
          }
        },
        {
          "text": "Generate a product name and a short product description for this image."
        }
      ]
    }
  ],
  "generationConfig": {
    "temperature": ${temperature},
    "maxOutputTokens": ${maxOutputTokens},
    "topK": ${topK},
    "topP": ${topP},
    "responseMimeType": "text/plain"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Vertex AI',
      apiUrl:
          'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0:generateContent?key=AIzaSyAkShGtRYgZuc53GA3ag5yh6Jy_NhSH6UQ',
      callType: ApiCallType.POST,
      headers: {},
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
}

class GeocodingCall {
  static Future<ApiCallResponse> call({
    double? lat = 22.4473,
    double? lng = 88.3920,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Geocoding',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=${lat},${lng}&key=AIzaSyDqy0YuK1lzqvwvNoDsfA60cLBghqdS9Lw',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? longAddress(dynamic response) => (getJsonField(
        response,
        r'''$.results[0].address_components[1].long_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? city(dynamic response) => (getJsonField(
        response,
        r'''$.results[0].address_components[4].short_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? district(dynamic response) => (getJsonField(
        response,
        r'''$.results[0].address_components[5].long_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? state(dynamic response) => (getJsonField(
        response,
        r'''$.results[0].address_components[7].long_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[0].address_components[8].long_name''',
      ));
  static String? pincode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[0].address_components[9].long_name''',
      ));
  static String? locality(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.results[0].address_components[3].long_name''',
      ));
}

class GetUsdCodeCall {
  static Future<ApiCallResponse> call({
    String? country = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getUsdCode',
      apiUrl: 'http://country.io/phone.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'country': country,
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

class CountryNamesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'countryNames',
      apiUrl: 'http://country.io/names.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class OpenstreetCall {
  static Future<ApiCallResponse> call({
    double? lat,
    double? lng,
    dynamic formatJson,
  }) async {
    final format = _serializeJson(formatJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'openstreet',
      apiUrl:
          'https://nominatim.openstreetmap.org/reverse?lat=37.7749&lon=-122.4194&format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': lat,
        'lng': lng,
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

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
