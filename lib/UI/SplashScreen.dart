import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _cargaLogin();
  }

  _cargaLogin() async {
    var _duracion = Duration(seconds: 5);
    return Timer(_duracion, tologin);
  }

  void tologin() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (BuildContext context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "lib/assets/images/logo7.png",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                    ],
                  )),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: new CircularProgressIndicator(
                            valueColor: new AlwaysStoppedAnimation<Color>(
                                const Color(4294862788)),
                            backgroundColor: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
