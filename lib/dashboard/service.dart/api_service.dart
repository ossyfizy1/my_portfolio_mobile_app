import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:my_portfolio/dashboard/model/github_model.dart';
import 'package:my_portfolio/shared_resources/http_call.dart';

class DashboardService {
  static Future<GitHubModel> getGithubProfile({
    required String username,
  }) async {
    http.Response? response = await HttpService(
      requestType: HttpRequestVerb.get,
      pathUrl: "https://api.github.com/users/${username}",
      jwtToken: false,
    ).apiCall;
    var responseDecoded = jsonDecode(response!.body);
    if (response.statusCode == 200) {
      GitHubModel user = GitHubModel.fromJson(responseDecoded);

      return user;
    } else if (response.statusCode == 400) {
      Map<String, dynamic> error =
          responseDecoded["errors"] as Map<String, dynamic>;
      log("${error.entries.first.value}");
      throw Exception("${error.entries.first.value}");
    } else if (response.statusCode == 401 || response.statusCode == 404) {
      log(responseDecoded["message"]);
      throw Exception(responseDecoded["message"]);
    } else {
      throw Exception("error occurred, try again later or contact the admin.");
    }
  }
}
