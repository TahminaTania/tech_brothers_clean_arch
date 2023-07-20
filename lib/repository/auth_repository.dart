import 'package:learn_clean_achitecture/data/network/base_api_services.dart';
import 'package:learn_clean_achitecture/data/network/network_api_services.dart';
import 'package:learn_clean_achitecture/res/app_urls.dart';

class AuthRepository {
  BaseApiServices _apiservices = NetworkApiServices();

  Future<dynamic> loginapi(dynamic data) async {
    try {
      dynamic response =
          await _apiservices.getPostApiResponses(AppUrl.loginEndPoint, data);
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<dynamic> signupapi(dynamic data) async {
    try {
      dynamic response = await _apiservices.getPostApiResponses(
          AppUrl.registerApiEndPoint, data);
      return response;
    } catch (e) {
      throw (e);
    }
  }
}
