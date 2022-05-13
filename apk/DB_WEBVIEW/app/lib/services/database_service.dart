import 'dart:convert';
import 'dart:io';

import 'package:app/constants/api.dart';
import 'package:app/services/http_service.dart';
import 'package:http/http.dart' as http;

class DatabaseService {
  static Future<Map> _api(String url) async {
    HttpOverrides.global = MyHttpOverrides();
    http.Response response = await http.get(Uri.parse(url));

    Map result = jsonDecode(response.body);

    return result;
  }

  static Future<String> getURL() async {
    Map result = await _api(linkAPI);

    return result['url'];
  }
}
