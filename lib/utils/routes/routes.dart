import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_clean_achitecture/utils/routes/routes_name.dart';
import 'package:learn_clean_achitecture/view/home_screen.dart';
import 'package:learn_clean_achitecture/view/login_screen.dart';
import 'package:learn_clean_achitecture/view/login_view.dart';
import 'package:learn_clean_achitecture/view/signup_view.dart';
import 'package:learn_clean_achitecture/view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignupView());
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Route Defined"),
            ),
          );
        });
    }
  }
}
