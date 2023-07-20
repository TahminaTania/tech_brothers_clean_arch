import 'package:learn_clean_achitecture/data/network/base_api_services.dart';
import 'package:learn_clean_achitecture/data/network/network_api_services.dart';
import 'package:learn_clean_achitecture/res/app_urls.dart';

class AuthRepository {
  BaseApiServices _baseapiservices = NetworkApiServices();

  Future<dynamic> loginapi(dynamic data) async {
    try {
      dynamic response = await _baseapiservices.getPostApiResponses(
          AppUrl.loginEndPoint, data);
    } catch (e) {
      throw (e);
    }
  }

  Future<dynamic> signupapi(dynamic data) async {
    try {
      dynamic response = await _baseapiservices.getPostApiResponses(
          AppUrl.registerApiEndPoint, data);
    } catch (e) {
      throw (e);
    }
  }
}
