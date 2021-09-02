import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navDrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  String frase = "Hola, mi emprendedora, que tengas un bonito y exitoso día";
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text("Maglykos"),
        ),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                frase,
                style: GoogleFonts.pacifico(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
