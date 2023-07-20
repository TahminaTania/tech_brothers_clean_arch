import 'package:flutter/material.dart';
import 'package:learn_clean_achitecture/utils/routes/routes_name.dart';
import 'package:learn_clean_achitecture/utils/utils.dart';
import 'package:learn_clean_achitecture/view/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            child: InkWell(
          onTap: () {
            //Navigator.pushNamed(context, RoutesName.home);
            Utils.toastMessage('No InterNet Connection');
            Utils.flushBarErrorMessage('No InterNet Connection', context);
          },
          child: Text("Home"),
        )),
      ),
      body: Container(),
    );
  }
}
