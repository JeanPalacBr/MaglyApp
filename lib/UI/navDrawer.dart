import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Image(
                  width: 140,
                  image: AssetImage("lib/assets/images/logo7.png"),
                ),
              ],
            ),
            decoration: new BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.pink[50], Colors.white],
                    stops: [0.1, 1, 0.2],
                    begin: FractionalOffset.center,
                    end: FractionalOffset.bottomCenter)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: () => {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Home()))
            },
          ),
          ListTile(
            leading: Icon(Icons.code),
            title: Text('Generar codigos'),
            onTap: () => {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Catalog()))
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Listado de codigos'),
            onTap: () => {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Categories()))
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Buscar usuarios'),
            onTap: () => {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Categories()))
            },
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered),
            title: Text('TOP usuarios'),
            onTap: () => {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Categories()))
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Cerrar sesión'),
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
