import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:newsz/src/core/resources/app_exception.dart';
import 'package:newsz/src/core/utils/constants.dart';

class ApiProvider {
  Future<dynamic> get({
    required String endpoint,
    required Map<String, String> params,
  }) async {
    dynamic responseJson;
    try {
      var url = Uri.https(kbaseUrl, endpoint, params);
      var response = await http.get(url);
      debugPrint(url.toString());
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      throw NoNetWorkException();
    }
  }

  Future<dynamic> post({required String endpoint}) async {
    dynamic responseJson;
    try {
      var url = Uri.https(kbaseUrl, endpoint);
      var response = await http.post(url);
      responseJson = _returnResponse(response);
      return responseJson;
    } on SocketException {
      throw NoNetWorkException();
    }
  }

  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body);
        // debugPrint(responseJson.toString());
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnAuthorizedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
