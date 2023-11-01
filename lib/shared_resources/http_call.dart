import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:my_portfolio/shared_resources/global_shared_preferences.dart';

enum HttpRequestVerb { get, post, put, delete }

class HttpService {
  final HttpRequestVerb requestType;
  final String pathUrl;
  final bool jwtToken;
  final Object? requestBody;
  HttpService({
    required this.requestType,
    required this.pathUrl,
    required this.jwtToken,
    this.requestBody,
  });

  Future<Response?> get apiCall async {
    String? jwtToken = await GlobalSharedPreference.get(key: "jwt_token");
    var url = Uri.parse(pathUrl);

    switch (requestType) {
      case HttpRequestVerb.get:
        return await http.get(
          url,
          headers: {
            "content-type": "application/json",
            "accept": "application/json",
            if (this.jwtToken) 'Authorization': 'Bearer $jwtToken'
          },
        );

      case HttpRequestVerb.post:
        return await http.post(
          url,
          headers: {
            "content-type": "application/json",
            "accept": "application/json",
            if (this.jwtToken) 'Authorization': 'Bearer $jwtToken'
          },
          body: requestBody != null ? json.encode(requestBody) : {},
        );

      case HttpRequestVerb.put:
        return await http.put(
          url,
          headers: {
            "content-type": "application/json",
            "accept": "application/json",
            if (this.jwtToken) 'Authorization': 'Bearer $jwtToken'
          },
          body: requestBody != null ? json.encode(requestBody) : {},
        );

      case HttpRequestVerb.delete:
        return await http.delete(
          url,
          headers: {
            "content-type": "application/json",
            "accept": "application/json",
            if (this.jwtToken) 'Authorization': 'Bearer $jwtToken'
          },
        );

      default:
        return null;
    }
  }
}
