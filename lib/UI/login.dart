import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:string_validator/string_validator.dart';

bool islogd = false;

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
          decoration: new BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, Colors.pink[50], Colors.white],
                  stops: [0.1, 1, 0.2],
                  begin: FractionalOffset.center,
                  end: FractionalOffset.bottomCenter)),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Islogged(),
          )),
    );
  }
}

class Islogged extends StatefulWidget {
  Isloggedstate createState() => Isloggedstate();
}

class Isloggedstate extends State {
  @override
  void initState() {
    islogd = false;
    super.initState();
  }

  final _email = new TextEditingController();
  final _password = new TextEditingController();
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("lib/assets/images/logo7.png"),
              )),
          Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: containerText(Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    autofocus: true,
                    cursorColor: Colors.white,
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      labelText: "Correo",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "example@ejemplo.com",
                      hintStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 25, 35, 25),
                child: containerText(Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    autofocus: true,
                    decoration: new InputDecoration(
                        labelText: "Contraseña",
                        labelStyle: TextStyle(color: Colors.black)),
                    obscureText: true,
                    controller: _password,
                  ),
                )),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(4294862788),
                      shadowColor: const Color(4294862788),
                      elevation: 5,
                      onSurface: const Color(4294862788)),
                  child: Text("Iniciar sesión",
                      style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    if (isEmail(_email.value.text)) {
                      onpressedlogin(context, _email.value.text,
                          _password.value.text, true);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Email o contraseña incorrectos'),
                          duration: const Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                ),
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: Divider(thickness: 2),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: const Color(4294862788),
                    shadowColor: const Color(4294862788)),
                child:
                    Text("Registrarse", style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Registrar()));
                },
              )),
        ],
      ),
    );
  }

  void onpressedlogin(
      var context, String email, String _password, bool remember) async {
    try {
      //if (user != null) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Bienvenido'),
        duration: const Duration(seconds: 3),
      ));
      setState(() {
        islogd = true;
      });
      //}
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error" + error.toString()),
        duration: const Duration(seconds: 2),
      ));
    }
  }

  Widget containerText(Widget widg) {
    return Container(
      margin: const EdgeInsets.all(2.0),
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(4294862788), width: 3.0),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: widg,
    );
  }
}
