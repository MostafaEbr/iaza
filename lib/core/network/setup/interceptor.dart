import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import '../../local_storage/cache_helper.dart';
import '../api.dart';



class ApiInterceptors extends InterceptorsWrapper {
  final List<String> cookiesList = [];
  var cookieString = StringBuffer();
  List<Cookie> loadForRequest = [];
  List<Cookie>? cookieList;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async{
    final setCookieHeader = response.headers[HttpHeaders.setCookieHeader];
    if (setCookieHeader != null && setCookieHeader.isNotEmpty) {
      final cookiesMap = CacheHelper.getCookiesMap() ?? {};
      for (var cookie in setCookieHeader) {
        final keyValue = _parseCookie(cookie);
        if (keyValue != null) {
          cookiesMap.update(keyValue.key, (value) => keyValue.value,
              ifAbsent: () => keyValue.value);
        }
      }
      final cookiesFormatted =
      cookiesMap.entries.map((e) => '${e.key}=${e.value}').join('; ');

      await Future.wait([
        CacheHelper.setCookies(value: cookiesFormatted),
        CacheHelper.setCookiesMap(value: jsonEncode(cookiesMap)),
      ]);
    }

    response.headers.forEach((name, values) async {
    });

    return handler.next(response);
  }
  // Helper function to parse a cookie string into a key-value pair
  MapEntry<String, String>? _parseCookie(String cookie) {
    final keyValue = cookie.split(';')[0].split('=');
    if (keyValue.length == 2) {
      final key = keyValue[0].trim();
      final value = keyValue[1].trim();
      return MapEntry(key, value);
    }
    return null;
  }
}
