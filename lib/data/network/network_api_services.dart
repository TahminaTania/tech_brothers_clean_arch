import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:learn_clean_achitecture/data/app_excaptions.dart';
import 'package:learn_clean_achitecture/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponses(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(" No Internet Connection");
    }
    return responseJson;
  }

  @override
  Future getPostApiResponses(String url, dynamic data) async {
    dynamic responseJson;
    try {
      Response response =
          await post(Uri.parse(url), body: data).timeout(Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException(" No Internet Connection");
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        throw UnAuthoriseException(response.body.toString());
      case 404:
        throw BadRequestException(response.body.toString());

      default:
        throw FetchDataException(
            "Error accourd while communicating with server status code" +
                response.statusCode.toString());
    }
  }
}
