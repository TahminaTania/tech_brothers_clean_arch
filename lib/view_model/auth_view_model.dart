import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learn_clean_achitecture/repository/auth_repository.dart';
import 'package:learn_clean_achitecture/utils/routes/routes_name.dart';
import 'package:learn_clean_achitecture/utils/utils.dart';
import 'package:learn_clean_achitecture/view/home_screen.dart';
import 'package:learn_clean_achitecture/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

import '../model/user_auth_model.dart';

class AuthViewModel with ChangeNotifier {
  final _myrepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  bool _signuploading = false;
  bool get signuploasding => _signuploading;

  setSignUpLoading(bool value) {
    _signuploading = value;
    notifyListeners();
  }

  Future<void> loginapi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myrepo.loginapi(data).then((value) {
      if (kDebugMode) {
        setLoading(false);
        Utils.flushBarErrorMessage(
            value.toString() + "logged in Successfully", context);
        print(value.toString() + " value of login api");
        Navigator.pushNamed(context, RoutesName.home);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        setLoading(false);
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString() + " value of Error in login api");
      }
    });
  }

  Future<void> signupapi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _myrepo.loginapi(data).then((value) {
      if (kDebugMode) {
        setSignUpLoading(false);
        Utils.flushBarErrorMessage(
            value.toString() + "logged in Successfully", context);
        print(value.toString() + " value of login api");
        Navigator.pushNamed(context, RoutesName.home);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        setSignUpLoading(false);
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString() + " value of Error in login api");
      }
    });
  }
}
