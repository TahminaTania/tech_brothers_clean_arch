import 'package:flutter/material.dart';
import 'package:learn_clean_achitecture/model/user_auth_model.dart';
import 'package:learn_clean_achitecture/utils/routes/routes.dart';
import 'package:learn_clean_achitecture/utils/routes/routes_name.dart';
import 'package:learn_clean_achitecture/view/login_screen.dart';
import 'package:learn_clean_achitecture/view/login_view.dart';
import 'package:learn_clean_achitecture/view_model/auth_view_model.dart';
import 'package:learn_clean_achitecture/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => UserViewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        ///home: LoginView(),

        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoutes,
      ),
    );
  }
}
